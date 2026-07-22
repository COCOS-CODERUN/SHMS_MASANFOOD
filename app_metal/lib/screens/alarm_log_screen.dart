import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/facility.dart';
import '../models/alarm_log.dart';
import '../services/db_service.dart';
import '../widgets/alarm_log_tile.dart';
import '../widgets/app_date_picker.dart';
import 'metal_detection_screen.dart';

class AlarmLogScreen extends StatefulWidget {
  final Facility facility;

  const AlarmLogScreen({super.key, required this.facility});

  @override
  State<AlarmLogScreen> createState() => _AlarmLogScreenState();
}

class _AlarmLogScreenState extends State<AlarmLogScreen> {
  DateTime _selectedDate = DateTime.now();
  late Future<List<AlarmLog>> _logsFuture;

  @override
  void initState() {
    super.initState();
    _loadLogs();
  }

  void _loadLogs() {
    setState(() {
      _logsFuture = DbService().getAlarmLogs(
        widget.facility,
        startDate: _selectedDate,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLight = theme.brightness == Brightness.light;

    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(isLight),
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              _buildSliverAppBar(isLight, theme),
              _buildDateSelectionSliver(isLight, theme),
              _buildContentSliver(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackground(bool isLight) {
    return Container(
      decoration: BoxDecoration(
        color: isLight ? const Color(0xFFF1F5F9) : const Color(0xFF020617),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 50,
            left: -50,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF6366F1).withValues(alpha: 0.1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar(bool isLight, ThemeData theme) {
    return SliverAppBar(
      expandedHeight: 140,
      pinned: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: theme.scaffoldBackgroundColor.withValues(
        alpha: 0.9,
      ), // 가독성을 위해 불투명도 조절
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: const EdgeInsets.only(left: 56, bottom: 16),
        title: Text(
          widget.facility.displayName,
          style: TextStyle(
            color: isLight ? const Color(0xFF0F172A) : Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 20,
            letterSpacing: -0.5,
          ),
        ),
        background: Container(color: Colors.transparent),
      ),
      leading: Navigator.canPop(context)
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
              onPressed: () => Navigator.pop(context),
            )
          : null,
      actions: [
        IconButton(
          tooltip: '금속검출',
          icon: Icon(
            Icons.bar_chart_rounded,
            color: theme.colorScheme.primary.withValues(alpha: 0.8),
            size: 26,
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MetalDetectionScreen(facility: widget.facility),
            ),
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildDateSelectionSliver(bool isLight, ThemeData theme) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: InkWell(
          onTap: () async {
            final date = await showAppDatePicker(
              context: context,
              initialDate: _selectedDate,
              firstDate: DateTime(2020),
              // 미래 날짜 허용
              lastDate: DateTime(9999, 12, 31),
            );

            // 화면 종료
            if (!mounted) return;

            // 날짜 취소
            if (date == null) return;

            // 날짜 적용
            _selectedDate = date;
            _loadLogs();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: isLight
                  ? Colors.white.withValues(alpha: 0.6)
                  : const Color(0xFF1E293B).withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white.withValues(alpha: isLight ? 0.5 : 0.1),
                width: 1.5,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today_rounded,
                  size: 18,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  dateFormat.format(_selectedDate),
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContentSliver() {
    return FutureBuilder<List<AlarmLog>>(
      future: _logsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator.adaptive()),
          );
        }

        if (snapshot.hasError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: Text('에러 발생: ${snapshot.error}')),
          );
        }

        final logs = snapshot.data ?? [];
        if (logs.isEmpty) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_off_rounded,
                    size: 64,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    '해당 날짜에 알람이 없습니다.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: AlarmLogTile(log: logs[index]),
              ),
              childCount: logs.length,
            ),
          ),
        );
      },
    );
  }
}
