import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/facility.dart';

class AppConfig {
  final String appName;
  final List<Facility> facilities;

  const AppConfig({required this.appName, required this.facilities});

  bool get isSingleFacility => facilities.length == 1;

  static Future<AppConfig> load() async {
    final jsonStr = await rootBundle.loadString('assets/app_config.json');
    final map = json.decode(jsonStr) as Map<String, dynamic>;

    final appName = map['appName'] as String? ?? 'HACCP 알람';
    final facilitiesList = map['facilities'] as List<dynamic>;

    final facilities = facilitiesList
        .map((f) => Facility.fromJson(f as Map<String, dynamic>))
        .toList();

    return AppConfig(appName: appName, facilities: facilities);
  }
}
