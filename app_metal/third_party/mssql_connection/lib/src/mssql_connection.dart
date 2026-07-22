import 'dart:async';
import 'dart:convert';

import 'mssql_client.dart';
import 'native_logger.dart';

class MssqlConnection {
  static final MssqlConnection _instance = MssqlConnection._internal();
  factory MssqlConnection.getInstance() => _instance;
  MssqlConnection._internal();

  MssqlClient? _client;

  String? _ip;
  String? _port;
  String? _database;
  String? _username;
  String? _password;
  int _timeoutInSeconds = 15;

  bool get isConnected => _client?.isConnected == true;

  Future<bool> connect({
    required String ip,
    required String port,
    required String databaseName,
    required String username,
    required String password,
    int timeoutInSeconds = 15,
  }) async {
    // Basic input validation to prevent invalid dbopen calls and fail fast.
    final ipTrim = ip.trim();
    final portTrim = port.trim();
    final userTrim = username.trim();
    final rawPassword = password; // allow spaces in password
    final timeout = timeoutInSeconds < 0 ? 0 : timeoutInSeconds;

    if (ipTrim.isEmpty) {
      MssqlLogger.w('connect(params) | invalid ip (empty)');
      return false;
    }
    if (portTrim.isEmpty) {
      MssqlLogger.w('connect(params) | invalid port (empty)');
      return false;
    }
    final portNum = int.tryParse(portTrim);
    if (portNum == null || portNum <= 0 || portNum > 65535) {
      MssqlLogger.w(
        'connect(params) | invalid port (non-numeric or out-of-range): $portTrim',
      );
      return false;
    }
    if (userTrim.isEmpty) {
      MssqlLogger.w('connect(params) | invalid username (empty)');
      return false;
    }
    if (rawPassword.isEmpty) {
      MssqlLogger.w('connect(params) | invalid password (empty)');
      return false;
    }

    _ip = ipTrim;
    _port = portTrim;
    _database = databaseName;
    _username = userTrim;
    _password = rawPassword;
    _timeoutInSeconds = timeout;

    try {
      final server = '$ipTrim:$portTrim';
      _client = MssqlClient(
        server: server,
        username: userTrim,
        password: rawPassword,
      );
      final ok = await _client!.connect(loginTimeoutSeconds: timeout);

      // Connection failure
      if (!ok) {
        await _client!.close();
        _client = null;
        return false;
      }

      // Select database for this session.
      if (databaseName.isNotEmpty) {
        final useResult = jsonDecode(
          await _client!.execute('USE [${_escapeBrackets(databaseName)}]'),
        );

        // Database selection
        if (useResult is! Map || useResult['error'] != null) {
          await _client!.close();
          _client = null;
          return false;
        }

        MssqlLogger.i('Switched database to $databaseName');
      }
      return true;
    } catch (e, st) {
      await _client?.close();
      _client = null;
      MssqlLogger.e('connect failed: $e\n$st');
      return false;
    }
  }

  Future<String> getData(String query, {bool useLastResultSet = false}) async {
    await _ensureConnectedOrReconnect();
    return _client!.execute(query, useLastResultSet: useLastResultSet);
  }

  Future<String> writeData(String query) async {
    await _ensureConnectedOrReconnect();
    return _client!.execute(query);
  }

  Future<String> getDataWithParams(
    String query,
    Map<String, dynamic> params, {
    bool useLastResultSet = false,
  }) async {
    await _ensureConnectedOrReconnect();
    return _client!.executeParams(
      query,
      params,
      useLastResultSet: useLastResultSet,
    );
  }

  Future<String> writeDataWithParams(
    String query,
    Map<String, dynamic> params,
  ) async {
    await _ensureConnectedOrReconnect();
    return _client!.executeParams(query, params);
  }

  Future<int> bulkInsert(
    String tableName,
    List<Map<String, dynamic>> rows, {
    List<String>? columns,
    int batchSize = 1000,
  }) async {
    await _ensureConnectedOrReconnect();
    return _client!.bulkInsert(
      tableName,
      rows,
      columns: columns,
      batchSize: batchSize,
    );
  }

  Future<bool> disconnect() async {
    try {
      await _client?.close();
      return true;
    } catch (_) {
      return false;
    } finally {
      _client = null;
      // Clear saved params so offline calls do not attempt implicit reconnect
      _ip = null;
      _port = null;
      _database = null;
      _username = null;
      _password = null;
    }
  }

  // Basic transaction helpers (optional, convenience)
  Future<void> beginTransaction() async {
    await writeData('BEGIN TRAN');
  }

  Future<void> commit() async {
    await writeData('COMMIT');
  }

  Future<void> rollback() async {
    await writeData('ROLLBACK');
  }

  Future<void> _ensureConnectedOrReconnect() async {
    if (_client?.isConnected == true) return;
    // Attempt reconnection using last known parameters if available
    if (_ip != null &&
        _port != null &&
        _database != null &&
        _username != null &&
        _password != null) {
      final connected = await connect(
        ip: _ip!,
        port: _port!,
        databaseName: _database!,
        username: _username!,
        password: _password!,
        timeoutInSeconds: _timeoutInSeconds,
      );

      // Reconnection failure
      if (!connected) {
        throw StateError('Could not reconnect to SQL Server.');
      }

      return;
    }
    throw StateError('Not connected. Call connect() first.');
  }

  static String _escapeBrackets(String name) => name.replaceAll(']', ']]');
}
