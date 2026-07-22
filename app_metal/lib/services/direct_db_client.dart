import 'dart:async';
import 'dart:convert';

import 'package:mssql_connection/mssql_connection.dart';

import '../config/db_config.dart';

class DirectDbClient {
  DirectDbClient._();

  static final DirectDbClient instance = DirectDbClient._();

  final DbConfig _config = DbConfig.fromSource();
  final MssqlConnection _connection = MssqlConnection.getInstance();
  Future<void> _queue = Future<void>.value();

  // 조회 실행
  Future<List<Map<String, dynamic>>> query(
    String sql, [
    Map<String, dynamic> params = const {},
  ]) {
    return _serial(() async {
      await _ensureConnected();
      return _query(sql, params);
    });
  }

  // 마지막 결과 조회
  Future<List<Map<String, dynamic>>> queryLast(
    String sql, [
    Map<String, dynamic> params = const {},
  ]) {
    return _serial(() async {
      await _ensureConnected();
      return _query(sql, params, useLastResultSet: true);
    });
  }

  // 저장 실행
  Future<void> execute(String sql, [Map<String, dynamic> params = const {}]) {
    return _serial(() async {
      await _ensureConnected();
      await _execute(sql, params);
    });
  }

  // 복합 작업 실행
  Future<T> runExclusive<T>(
    Future<T> Function(DirectDbSession session) action,
  ) {
    return _serial(() async {
      await _ensureConnected();
      return action(DirectDbSession._(this));
    });
  }

  // 연결 확인
  Future<bool> testConnection() async {
    try {
      final rows = await query('SELECT 1 AS ConnectionOK');
      return rows.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  // 연결 종료
  Future<void> disconnect() {
    return _serial(() async {
      // 미연결 상태
      if (!_connection.isConnected) return;

      await _connection.disconnect();
    });
  }

  // DB 연결
  Future<void> _ensureConnected() async {
    _config.validate();

    // 기존 연결
    if (_connection.isConnected) return;

    final connected = await _connection.connect(
      ip: _config.host,
      port: _config.port,
      databaseName: _config.databaseName,
      username: _config.username,
      password: _config.password,
      timeoutInSeconds: _config.timeoutSeconds,
    );

    // 연결 실패
    if (!connected) throw Exception('DB 서버에 연결할 수 없습니다.');
  }

  // 잠금 내부 조회
  Future<List<Map<String, dynamic>>> _query(
    String sql,
    Map<String, dynamic> params, {
    bool useLastResultSet = false,
  }) async {
    try {
      final source = params.isEmpty
          ? await _connection.getData(sql, useLastResultSet: useLastResultSet)
          : await _connection.getDataWithParams(
              sql,
              params,
              useLastResultSet: useLastResultSet,
            );
      final result = _decodeResult(source);
      final rows = result['rows'];

      // 조회 결과
      if (rows is! List) return [];

      return rows
          .whereType<Map>()
          .map(
            (row) => row.map((key, value) => MapEntry(key.toString(), value)),
          )
          .toList();
    } catch (_) {
      // 오류 연결 정리
      await _connection.disconnect();
      throw Exception('DB 조회 중 오류가 발생했습니다.');
    }
  }

  // 잠금 내부 저장
  Future<void> _execute(String sql, Map<String, dynamic> params) async {
    try {
      final source = params.isEmpty
          ? await _connection.writeData(sql)
          : await _connection.writeDataWithParams(sql, params);
      _decodeResult(source);
    } catch (_) {
      // 오류 연결 정리
      await _connection.disconnect();
      throw Exception('DB 저장 중 오류가 발생했습니다.');
    }
  }

  // 결과 변환
  Map<String, dynamic> _decodeResult(String source) {
    final decoded = json.decode(source);

    // 결과 형식
    if (decoded is! Map<String, dynamic>) {
      throw Exception('DB 응답 형식이 올바르지 않습니다.');
    }

    // DB 오류
    if (decoded['error'] != null) {
      throw Exception('DB 응답에 오류가 포함되어 있습니다.');
    }

    return decoded;
  }

  // 쿼리 직렬화
  Future<T> _serial<T>(Future<T> Function() action) async {
    final previous = _queue;
    final release = Completer<void>();
    _queue = release.future;

    await previous;

    try {
      return await action();
    } finally {
      release.complete();
    }
  }
}

class DirectDbSession {
  final DirectDbClient _client;

  DirectDbSession._(this._client);

  // 복합 작업 조회
  Future<List<Map<String, dynamic>>> query(
    String sql, [
    Map<String, dynamic> params = const {},
  ]) {
    return _client._query(sql, params);
  }

  // 복합 작업 저장
  Future<void> execute(String sql, [Map<String, dynamic> params = const {}]) {
    return _client._execute(sql, params);
  }
}
