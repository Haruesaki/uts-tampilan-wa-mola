import 'package:flutter/material.dart';
import 'chats_screen.dart';
import 'calls_screen.dart';
import 'updates_screen.dart';
import 'community_screen.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _currentIndex = 0;

  static const _bg = Color(0xFF0B141A);
  static const _indicatorColor = Color(0xFF103629);
  static const _activeIconColor = Color(0xFFD9FDD3);
  static const _inactiveColor = Color(0xFF8696A0);
  static const _activeTextColor = Color(0xFFE9EDEF);
  static const _green = Color(0xFF25D366);

  final _screens = const [
    ChatsScreen(),
    UpdatesScreen(),
    CommunityScreen(),
    CallsScreen(),
  ];

  Widget _buildNavItem({
    required int index,
    required IconData activeIcon,
    required IconData inactiveIcon,
    required String label,
    bool hasBadge = false,
  }) {
    final isSelected = _currentIndex == index;
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => setState(() => _currentIndex = index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 205,
              height: 104,
              decoration: BoxDecoration(
                color: isSelected ? _indicatorColor : Colors.transparent,
                borderRadius: BorderRadius.circular(52),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Icon(
                    isSelected ? activeIcon : inactiveIcon,
                    color: isSelected ? _activeIconColor : _inactiveColor,
                    size: 72,
                  ),
                  if (hasBadge)
                    Positioned(
                      top: 4,
                      right: 18,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                        decoration: BoxDecoration(
                          color: _green,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          '99+',
                          style: TextStyle(
                            color: Color(0xFF0B141A),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? _activeTextColor : _inactiveColor,
                fontSize: 38,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: _screens,
            ),
          ),
          Container(
            height: 260,
            color: _bg,
            child: Row(
              children: [
                _buildNavItem(
                  index: 0,
                  activeIcon: Icons.chat_bubble,
                  inactiveIcon: Icons.chat_bubble_outline,
                  label: 'Chats',
                  hasBadge: true,
                ),
                _buildNavItem(
                  index: 1,
                  activeIcon: Icons.donut_large,
                  inactiveIcon: Icons.donut_large_outlined,
                  label: 'Updates',
                ),
                _buildNavItem(
                  index: 2,
                  activeIcon: Icons.groups,
                  inactiveIcon: Icons.groups_outlined,
                  label: 'Communities',
                ),
                _buildNavItem(
                  index: 3,
                  activeIcon: Icons.call,
                  inactiveIcon: Icons.call_outlined,
                  label: 'Calls',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
