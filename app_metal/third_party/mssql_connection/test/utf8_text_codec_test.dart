import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:mssql_connection/mssql_connection.dart';
import 'package:mssql_connection/src/ffi/freetds_bindings.dart';
import 'package:test/test.dart';

// DB 문자열 디코딩
String _decodeTextValue(int type, String value) {
  final bytes = utf8.encode(value);
  final pointer = malloc<Uint8>(bytes.length);
  pointer.asTypedList(bytes.length).setAll(0, bytes);

  try {
    return decodeDbValue(type, pointer, bytes.length) as String;
  } finally {
    malloc.free(pointer);
  }
}

// 문자열 인코딩 회귀
void main() {
  test('preserves raw VARCHAR until explicit CP949 recovery', () {
    for (final type in [SYBCHAR, SYBVARCHAR, SYBTEXT]) {
      expect(_decodeTextValue(type, '±Ý¼Ó°ËÃâ 1'), '±Ý¼Ó°ËÃâ 1');
      expect(_decodeTextValue(type, '°¡'), '°¡');
    }
  });

  test('repairs CP949 mojibake only through explicit recovery', () {
    expect(restoreCp949Mojibake('±Ý¼Ó°ËÃâ 1'), '금속검출 1');
    expect(restoreCp949Mojibake('°ËÃâ'), '검출');
    expect(restoreCp949Mojibake('¹Ì°ËÃâ'), '미검출');
    expect(restoreCp949Mojibake('½Ã°£ÃÊ°ú'), '시간초과');
  });

  test('preserves UTF-8 Unicode results', () {
    for (final type in [SYBNTEXT, SYBNVARCHAR]) {
      expect(_decodeTextValue(type, '시편테스트 금속검출'), '시편테스트 금속검출');
    }
    expect(restoreCp949Mojibake('시편테스트 금속검출'), '시편테스트 금속검출');
  });

  test('preserves ASCII and non-CP949 VARCHAR results', () {
    expect(_decodeTextValue(SYBVARCHAR, 'text 123'), 'text 123');
    expect(_decodeTextValue(SYBVARCHAR, 'café'), 'café');
    expect(restoreCp949Mojibake('text 123'), 'text 123');
    expect(restoreCp949Mojibake('café'), 'café');
  });
}
