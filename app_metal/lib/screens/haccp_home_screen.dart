import 'package:flutter/material.dart';
import '../models/app_user.dart';
import '../models/facility.dart';
import 'haccp_sub_menu_screen.dart';

class HaccpHomeScreen extends StatelessWidget {
  final Facility facility;
  final AppUser user;

  const HaccpHomeScreen({
    super.key,
    required this.facility,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final menus = [
      _MainMenuData(
        title: 'HACCP 모니터링',
        badge: 'MONITORING',
        description: '이탈 / 모니터링 / 온도현황',
        color: const Color(0xFF2F9E73),
        type: HaccpMenuType.monitoring,
        icon: Icons.monitor_heart_outlined,
      ),
      _MainMenuData(
        title: 'CCP관리',
        badge: 'MANAGE',
        description: '기준 / 가열 / 금속검출 / 수분활성도',
        color: const Color(0xFFD97706),
        type: HaccpMenuType.ccpManage,
        icon: Icons.fact_check_outlined,
      ),
      _MainMenuData(
        title: 'CCP 등록',
        badge: 'REGISTER',
        description: '작업 / 가열 / 시편테스트',
        color: const Color(0xFFBE3A46),
        type: HaccpMenuType.ccpRegister,
        icon: Icons.edit_note_outlined,
      ),
    ];
    final isLight = Theme.of(context).brightness == Brightness.light;
    final background = isLight
        ? const Color(0xFFF4F7FA)
        : const Color(0xFF0B1220);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: const Text('HACCP')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(18, 8, 18, 22),
          children: [
            _HomeHeader(
              userName: user.name.isEmpty ? user.loginId : user.name,
              isLight: isLight,
            ),
            const SizedBox(height: 16),
            ...menus.map(
              (menu) => Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: _MainMenuTile(
                  menu: menu,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => HaccpSubMenuScreen(
                          facility: facility,
                          user: user,
                          type: menu.type,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MainMenuData {
  final String title;
  final String badge;
  final String description;
  final Color color;
  final HaccpMenuType type;
  final IconData icon;

  const _MainMenuData({
    required this.title,
    required this.badge,
    required this.description,
    required this.color,
    required this.type,
    required this.icon,
  });
}

class _MainMenuTile extends StatelessWidget {
  final _MainMenuData menu;
  final VoidCallback onTap;

  const _MainMenuTile({required this.menu, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final tileColor = isLight ? Colors.white : const Color(0xFF172033);
    final borderColor = isLight
        ? const Color(0xFFD8E0EA)
        : const Color(0xFF334155);
    final textColor = isLight ? const Color(0xFF10233F) : Colors.white;

    return Material(
      color: tileColor,
      elevation: isLight ? 3 : 0,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          constraints: const BoxConstraints(minHeight: 102),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor),
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: menu.color,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: const SizedBox(width: 7),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 16, 12, 16),
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: menu.color.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(menu.icon, color: menu.color, size: 28),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: menu.color.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          menu.badge,
                          style: TextStyle(
                            color: menu.color,
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        menu.title,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        menu.description,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: isLight
                              ? const Color(0xFF516172)
                              : const Color(0xFFCBD5E1),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeHeader extends StatelessWidget {
  final String userName;
  final bool isLight;

  const _HomeHeader({required this.userName, required this.isLight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isLight ? const Color(0xFF14375F) : const Color(0xFF111827),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.13),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.health_and_safety_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'HACCP 메인',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  userName,
                  style: const TextStyle(
                    color: Color(0xFFD5E0EC),
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              color: const Color(0xFF2F9E73),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              'MOBILE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
