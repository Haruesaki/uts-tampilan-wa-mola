import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/call_tile.dart';
import '../widgets/round_action_button.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  static const _bg = Color(0xFF0B141A);
  static const _mainText = Color(0xFFE9EDEF);
  static const _green = Color(0xFF25D366);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Mock status bar
              Padding(
                padding: const EdgeInsets.fromLTRB(56, 68, 56, 16),
                child: Row(
                  children: [
                    const Text(
                      '10:15',
                      style: TextStyle(
                        color: _mainText,
                        fontSize: 44,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.signal_cellular_alt, color: _mainText, size: 44),
                    const SizedBox(width: 14),
                    const Icon(Icons.wifi, color: _mainText, size: 44),
                    const SizedBox(width: 14),
                    Transform.rotate(
                      angle: 1.57,
                      child: const Icon(Icons.battery_full, color: _mainText, size: 48),
                    ),
                  ],
                ),
              ),
              // App bar header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 8),
                child: Row(
                  children: [
                    const Text(
                      'Calls',
                      style: TextStyle(
                        color: _mainText,
                        fontSize: 68,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.search, color: _mainText, size: 75),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    const SizedBox(width: 32),
                    IconButton(
                      icon: const Icon(Icons.more_vert, color: _mainText, size: 75),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // 4 action buttons
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundActionButton(icon: Icons.call, label: 'Call'),
                    RoundActionButton(icon: Icons.calendar_month_outlined, label: 'Schedule'),
                    RoundActionButton(icon: Icons.dialpad, label: 'Keypad'),
                    RoundActionButton(icon: Icons.favorite_border, label: 'Favorites'),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              // Recent heading
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 52),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    color: _mainText,
                    fontSize: 56,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Call list
              ...calls.map((c) => CallTile(call: c)),
            ],
          ),
          // Floating Action Button
          Positioned(
            bottom: 60,
            right: 52,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: _green,
                borderRadius: BorderRadius.circular(54),
              ),
              child: const Icon(Icons.add_call, color: Color(0xFF0B141A), size: 82),
            ),
          ),
        ],
      ),
    );
  }
}
