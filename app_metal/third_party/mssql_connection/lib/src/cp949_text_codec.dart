import 'package:cp949_codec/cp949_codec.dart';

// 한글 포함 여부
bool _containsHangul(String value) {
  for (final rune in value.runes) {
    // 한글 자모 및 완성형
    if ((rune >= 0x1100 && rune <= 0x11FF) ||
        (rune >= 0x3130 && rune <= 0x318F) ||
        (rune >= 0xAC00 && rune <= 0xD7A3)) {
      return true;
    }
  }
  return false;
}

// CP949 깨짐 복원
String restoreCp949Mojibake(String value) {
  var hasExtendedByte = false;

  for (final codeUnit in value.codeUnits) {
    // 정상 Unicode 유지
    if (codeUnit > 0xFF) return value;

    // CP949 후보 확인
    if (codeUnit >= 0x80) hasExtendedByte = true;
  }

  // ASCII 유지
  if (!hasExtendedByte) return value;

  try {
    final decoded = cp949.decodeString(value);

    // 한글 복원 확인
    if (_containsHangul(decoded)) return decoded;
  } on FormatException {
    return value;
  }

  return value;
}
