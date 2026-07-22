import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/alarm_log.dart';

class AlarmLogTile extends StatelessWidget {
  final AlarmLog log;

  const AlarmLogTile({super.key, required this.log});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLight = theme.brightness == Brightness.light;
    final timeFormat = DateFormat('HH:mm');
    final gubun = log.gubun ?? '';
    final accent = _getAccent(gubun);

    return Container(
      decoration: BoxDecoration(
        color: isLight ? Colors.white.withValues(alpha: 0.9) : const Color(0xFF1E293B).withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: isLight ? Colors.white : Colors.white.withValues(alpha: 0.1),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: accent.color.withValues(alpha: isLight ? 0.05 : 0.15),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 왼쪽 디자인 바
              Container(
                width: 8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [accent.color, accent.color.withValues(alpha: 0.3)],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _buildGubunBadge(accent, gubun),
                          const Spacer(),
                          if (log.logDateTime != null)
                            Text(
                              timeFormat.format(log.logDateTime!),
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w900,
                                color: theme.colorScheme.primary,
                                fontFeatures: const [FontFeature.tabularFigures()],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        log.message ?? '(내용 없음)',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.4,
                          fontWeight: FontWeight.w700,
                          color: isLight ? const Color(0xFF0F172A) : Colors.white,
                          letterSpacing: -0.3,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          if (log.line != null && log.line!.isNotEmpty) ...[
                            _buildMiniInfo(Icons.layers_rounded, log.line!),
                            const SizedBox(width: 12),
                          ],
                          _buildSentStatus(isLight),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGubunBadge(_AccentData accent, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: accent.color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(accent.icon, size: 14, color: accent.color),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w900,
              color: accent.color,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMiniInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: Colors.grey.shade500),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }

  Widget _buildSentStatus(bool isLight) {
    final isSent = log.sent?.startsWith('Y') ?? false;
    final color = isSent ? const Color(0xFF10B981) : const Color(0xFFF59E0B);
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Text(
            isSent ? '전송됨' : '대기',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: color),
          ),
        ],
      ),
    );
  }

  static _AccentData _getAccent(String gubun) {
    if (gubun.contains('온도')) {
      return _AccentData(color: const Color(0xFFEF4444), icon: Icons.thermostat_rounded);
    }
    if (gubun.contains('금속')) {
      return _AccentData(color: const Color(0xFF8B5CF6), icon: Icons.precision_manufacturing_rounded);
    }
    if (gubun.contains('습도')) {
      return _AccentData(color: const Color(0xFF0EA5E9), icon: Icons.water_drop_rounded);
    }
    return _AccentData(color: const Color(0xFF6366F1), icon: Icons.notifications_active_rounded);
  }
}

class _AccentData {
  final Color color;
  final IconData icon;

  const _AccentData({required this.color, required this.icon});
}
