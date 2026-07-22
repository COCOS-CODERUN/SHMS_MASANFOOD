import 'package:flutter/material.dart';
import '../models/app_user.dart';
import '../models/facility.dart';
import 'metal_detection_screen.dart';

enum HaccpMenuType { monitoring, ccpManage, ccpRegister }

class HaccpSubMenuScreen extends StatelessWidget {
  final Facility facility;
  final AppUser user;
  final HaccpMenuType type;

  const HaccpSubMenuScreen({
    super.key,
    required this.facility,
    required this.user,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final title = switch (type) {
      HaccpMenuType.monitoring => 'HACCP 모니터링',
      HaccpMenuType.ccpManage => 'CCP관리',
      HaccpMenuType.ccpRegister => 'CCP 등록',
    };
    final color = switch (type) {
      HaccpMenuType.monitoring => const Color(0xFF2F9E73),
      HaccpMenuType.ccpManage => const Color(0xFFD97706),
      HaccpMenuType.ccpRegister => const Color(0xFFBE3A46),
    };
    final items = _items(type);
    final isLight = Theme.of(context).brightness == Brightness.light;
    final background = isLight
        ? const Color(0xFFF4F7FA)
        : const Color(0xFF0B1220);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(18, 8, 18, 22),
          itemBuilder: (context, index) {
            // 상단 헤더
            if (index == 0) {
              return _SubMenuHeader(title: title, color: color);
            }

            final item = items[index];
            return _SubMenuTile(
              item: item,
              color: color,
              onTap: () => _openMenu(context, item),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemCount: items.length,
        ),
      ),
    );
  }

  List<_SubMenuData> _items(HaccpMenuType type) {
    final items = switch (type) {
      HaccpMenuType.monitoring => [
        _SubMenuData(
          title: 'CCP 한계기준이탈',
          description: '발생 / 복귀 / 지속시간',
          icon: Icons.warning_amber_outlined,
        ),
        _SubMenuData(
          title: 'CCP모니터링',
          description: '공정별 모니터링 현황',
          icon: Icons.query_stats_outlined,
        ),
        _SubMenuData(
          title: '온도현황',
          description: 'HACCP 대상 설비만 표시',
          icon: Icons.device_thermostat_outlined,
        ),
      ],
      HaccpMenuType.ccpManage => [
        _SubMenuData(
          title: '가열공정',
          description: '업체 사용 시 표시',
          icon: Icons.local_fire_department_outlined,
        ),
        _SubMenuData(
          title: '금속검출',
          description: '검출 이력 조회',
          icon: Icons.sensors_outlined,
          action: _SubMenuAction.metalCheck,
        ),
        _SubMenuData(
          title: '수분활성도',
          description: '업체 사용 시 표시',
          icon: Icons.water_drop_outlined,
        ),
      ],
      HaccpMenuType.ccpRegister => [
        _SubMenuData(
          title: '작업 등록',
          description: '공정 작업 정보',
          icon: Icons.assignment_outlined,
        ),
        _SubMenuData(
          title: '가열공정 등록',
          description: '가열 기록 등록',
          icon: Icons.thermostat_auto_outlined,
        ),
        _SubMenuData(
          title: '시편테스트',
          description: '금속검출 시편테스트',
          icon: Icons.fact_check_outlined,
          action: _SubMenuAction.metalTest,
        ),
      ],
    };

    return [
      const _SubMenuData(title: '', description: '', icon: Icons.menu),
      ...items,
    ];
  }

  void _openMenu(BuildContext context, _SubMenuData item) {
    // 금속검출
    if (item.action == _SubMenuAction.metalCheck) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) =>
              MetalDetectionScreen(facility: facility, writerName: user.name),
        ),
      );
      return;
    }

    // 시편테스트
    if (item.action == _SubMenuAction.metalTest) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => MetalDetectionScreen(
            facility: facility,
            writerName: user.name,
            initialTabIndex: 1,
          ),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('${item.title} 준비중')));
  }
}

enum _SubMenuAction { none, metalCheck, metalTest }

class _SubMenuData {
  final String title;
  final String description;
  final IconData icon;
  final _SubMenuAction action;

  const _SubMenuData({
    required this.title,
    required this.description,
    required this.icon,
    this.action = _SubMenuAction.none,
  });
}

class _SubMenuTile extends StatelessWidget {
  final _SubMenuData item;
  final Color color;
  final VoidCallback onTap;

  const _SubMenuTile({
    required this.item,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final active = item.action != _SubMenuAction.none;
    final tileColor = isLight ? Colors.white : const Color(0xFF172033);
    final borderColor = isLight
        ? const Color(0xFFD8E0EA)
        : const Color(0xFF334155);
    final iconColor = active ? color : const Color(0xFF64748B);

    return Material(
      color: tileColor,
      elevation: isLight ? 2 : 0,
      shadowColor: Colors.black.withValues(alpha: 0.07),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          constraints: const BoxConstraints(minHeight: 72),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor),
          ),
          child: Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: active ? 0.12 : 0.08),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(item.icon, size: 24, color: iconColor),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: active || !isLight
                            ? null
                            : const Color(0xFF334155),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item.description,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: isLight
                            ? const Color(0xFF475569)
                            : const Color(0xFFCBD5E1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: (active ? color : const Color(0xFF64748B)).withValues(
                    alpha: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  active ? '사용' : '준비중',
                  style: TextStyle(
                    color: active ? color : const Color(0xFF64748B),
                    fontSize: 11,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubMenuHeader extends StatelessWidget {
  final String title;
  final Color color;

  const _SubMenuHeader({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.16),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.layers_outlined,
              color: Colors.white,
              size: 26,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
