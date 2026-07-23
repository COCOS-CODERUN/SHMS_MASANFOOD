import 'package:flutter/material.dart';
import '../models/facility.dart';
import 'alarm_log_screen.dart';
import 'metal_detection_screen.dart';

class FacilityListScreen extends StatelessWidget {
  final List<Facility> facilities;

  const FacilityListScreen({super.key, required this.facilities});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLight = theme.brightness == Brightness.light;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('다HACCP'),
      ),
      body: Stack(
        children: [
          _buildBackground(isLight),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWelcomeSection(theme),
                  const SizedBox(height: 32),
                  _buildBentoGrid(context, theme, isLight),
                ],
              ),
            ),
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
            top: -100,
            right: -50,
            child: _GlowCircle(
              color: const Color(0xFF6366F1).withValues(alpha: isLight ? 0.1 : 0.2),
              size: 300,
            ),
          ),
          Positioned(
            bottom: 100,
            left: -100,
            child: _GlowCircle(
              color: const Color(0xFFEC4899).withValues(alpha: isLight ? 0.05 : 0.15),
              size: 400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeSection(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '실시간 모니터링',
          style: theme.textTheme.labelLarge?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '관리 중인 사업장',
          style: theme.textTheme.headlineLarge,
        ),
      ],
    );
  }

  Widget _buildBentoGrid(BuildContext context, ThemeData theme, bool isLight) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: facilities.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (context, index) {
        final facility = facilities[index];
        return _BentoCard(
          facility: facility,
          theme: theme,
          isLight: isLight,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AlarmLogScreen(facility: facility)),
          ),
        );
      },
    );
  }
}

class _BentoCard extends StatelessWidget {
  final Facility facility;
  final ThemeData theme;
  final bool isLight;
  final VoidCallback onTap;

  const _BentoCard({
    required this.facility,
    required this.theme,
    required this.isLight,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withValues(alpha: isLight ? 0.05 : 0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [theme.colorScheme.primary, theme.colorScheme.secondary],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(Icons.factory_rounded, color: Colors.white, size: 24),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.bar_chart_rounded, 
                        color: theme.colorScheme.primary.withValues(alpha: 0.8),
                        size: 28,
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MetalDetectionScreen(facility: facility)),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  facility.displayName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 18,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Color(0xFF22C55E),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Live 접속 중',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: isLight ? Colors.grey.shade600 : Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GlowCircle extends StatelessWidget {
  final Color color;
  final double size;

  const _GlowCircle({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: size / 2,
            spreadRadius: size / 4,
          ),
        ],
      ),
    );
  }
}
