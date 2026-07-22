class AlarmLog {
  final DateTime? indate;
  final String? message;
  final String? gubun;
  final String? line;
  final String? itemid;
  final DateTime? logDateTime;
  final String? sent;

  const AlarmLog({
    this.indate,
    this.message,
    this.gubun,
    this.line,
    this.itemid,
    this.logDateTime,
    this.sent,
  });

  factory AlarmLog.fromMap(Map<String, dynamic> map) {
    return AlarmLog(
      indate: _parseDateTime(map['indate']),
      message: map['Message']?.toString(),
      gubun: map['gubun']?.toString(),
      line: map['line']?.toString(),
      itemid: map['itemid']?.toString(),
      logDateTime: _parseDateTime(map['LogDateTime']),
      sent: map['sent']?.toString(),
    );
  }

  static DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString());
  }
}
