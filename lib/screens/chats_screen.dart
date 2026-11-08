import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/chat_tile.dart';
import '../screens/settings_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  static const _bg = Color(0xFF0B141A);
  static const _surface = Color(0xFF1F2C34);
  static const _mainText = Color(0xFFE9EDEF);
  static const _secondaryText = Color(0xFF8696A0);
  static const _green = Color(0xFF25D366);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: Stack(
        children: [
          Column(
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
              const SizedBox(height: 52),
              // App bar header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 8),
                child: Row(
                  children: [
                    const Text(
                      'WhatsApp',
                      style: TextStyle(
                        color: _mainText,
                        fontSize: 68,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.photo_camera_outlined, color: _mainText, size: 75),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    const SizedBox(width: 32),
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert, color: _mainText, size: 75),
                      color: _surface,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(minWidth: 700),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                     onSelected: (String value) {
                     if (value == 'settings') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SettingsScreen()),
                      );
                      }
                        },
                      itemBuilder: (_) => const [
                        PopupMenuItem(value: 'new_group', height: 140, child: Text('New group', style: TextStyle(color: _mainText, fontSize: 48))),
                        PopupMenuItem(value: 'new_community', height: 140, child: Text('New community', style: TextStyle(color: _mainText, fontSize: 48))),
                        PopupMenuItem(value: 'broadcast', height: 140, child: Text('Broadcast lists', style: TextStyle(color: _mainText, fontSize: 48))),
                        PopupMenuItem(value: 'linked', height: 140, child: Text('Linked devices', style: TextStyle(color: _mainText, fontSize: 48))),
                        PopupMenuItem(value: 'starred', height: 140, child: Text('Starred', style: TextStyle(color: _mainText, fontSize: 48))),
                        PopupMenuItem(value: 'read_all', height: 140, child: Text('Read all', style: TextStyle(color: _mainText, fontSize: 48))),
                        PopupMenuItem(value: 'settings', height: 140, child: Text('Settings', style: TextStyle(color: _mainText, fontSize: 48))),
                      ],
                    ),
                  ],
                ),
              ),
              // Search bar
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 24, 40, 24),
                child: Container(
                  height: 155,
                  decoration: BoxDecoration(
                    color: _surface,
                    borderRadius: BorderRadius.circular(78),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: _secondaryText, size: 68),
                      SizedBox(width: 36),
                      Expanded(
                        child: Text(
                          'Ask Meta AI or Search',
                          style: TextStyle(color: _secondaryText, fontSize: 46),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Archived row
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: SizedBox(
                  height: 155,
                  child: Row(
                    children: [
                      SizedBox(width: 165, child: Icon(Icons.archive_outlined, color: _secondaryText, size: 70)),
                      SizedBox(width: 38),
                      Expanded(
                        child: Text(
                          'Archived',
                          style: TextStyle(color: _secondaryText, fontSize: 50),
                        ),
                      ),
                      Text(
                        '12',
                        style: TextStyle(color: _secondaryText, fontSize: 44),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              // Chat list
              ...chats.map((c) => ChatTile(chat: c)),
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
              child: const Icon(Icons.add_comment, color: Color(0xFF0B141A), size: 82),
            ),
          ),
        ],
      ),
    );
  }
}
