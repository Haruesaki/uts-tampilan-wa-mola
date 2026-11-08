import 'package:flutter/material.dart';
import '../data/dummy_data.dart'; 
import '../models/setting_item.dart'; 
import 'profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  final Color bgColor = const Color(0xFF0B141A);
  final Color textColor = Colors.white;
  final Color subTextColor = const Color(0xFF8696A0);
  final Color iconColor = const Color(0xFF8696A0);
  final Color metaBgColor = const Color(0xFF1F2C34);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Mock status bar (Identik dengan seluruh layar)
          Padding(
            padding: const EdgeInsets.fromLTRB(56, 68, 56, 16),
            child: Row(
              children: [
                Text(
                  '10:15',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Icon(Icons.signal_cellular_alt, color: textColor, size: 44),
                const SizedBox(width: 14),
                Icon(Icons.wifi, color: textColor, size: 44),
                const SizedBox(width: 14),
                Transform.rotate(
                  angle: 1.57,
                  child: Icon(Icons.battery_full, color: textColor, size: 48),
                ),
              ],
            ),
          ),

          // 2. App Bar Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: textColor, size: 75),
                  onPressed: () => Navigator.pop(context),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(Icons.search, color: textColor, size: 75), 
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const SizedBox(width: 32),
                IconButton(
                  icon: Icon(Icons.qr_code_scanner, color: textColor, size: 75), 
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const SizedBox(width: 32),
                IconButton(
                  icon: Icon(Icons.edit_outlined, color: textColor, size: 75), 
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),

          // 3. Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProfileScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20), 
                      child: Center(
                        child: Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.topCenter,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 40, bottom: 40),
                                  child: const CircleAvatar(
                                    radius: 160,
                                    backgroundColor: Color(0xFF1F2C34),
                                    backgroundImage: NetworkImage('https://wallpaperset.com/w/full/3/d/b/198619.jpg'), 
                                    child: Icon(Icons.person, size: 160, color: Color(0xFF8696A0)),
                                  ),
                                ),
                                Positioned(
                                  top: -10,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                                    decoration: BoxDecoration(
                                      color: metaBgColor,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Text(
                                      "Ada kabar apa?", 
                                      style: TextStyle(color: subTextColor, fontSize: 38),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Fauzan Adzim", 
                                  style: TextStyle(color: textColor, fontSize: 56, fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(width: 16),
                                Icon(Icons.keyboard_arrow_down, color: textColor, size: 60),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 48),
                  for (final item in settingsList) _buildSettingItem(item),
                  
                  const SizedBox(height: 48),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Juga dari Meta", style: TextStyle(color: subTextColor, fontSize: 48, fontWeight: FontWeight.w500)),
                        const SizedBox(height: 40),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (final app in metaAppsList) _buildMetaAppIcon(app),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 120), 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem(SettingItem item) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 36), 
        child: Row(
          crossAxisAlignment: item.subtitle != null 
              ? CrossAxisAlignment.start 
              : CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: item.subtitle != null ? 4.0 : 0.0),
              child: Icon(item.icon, color: iconColor, size: 72), 
            ),
            const SizedBox(width: 48), 
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 0,
                        child: Text(
                          item.title, 
                          style: TextStyle(color: textColor, fontSize: 52, fontWeight: FontWeight.w400),
                        ),
                      ),
                      if (item.isNew) ...[
                        const SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF00A884),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text("Baru", style: TextStyle(color: Color(0xFF0B141A), fontSize: 28, fontWeight: FontWeight.bold)),
                        ),
                      ]
                    ],
                  ),
                  if (item.subtitle != null) ...[
                    const SizedBox(height: 12), 
                    Text(
                      item.subtitle!, 
                      style: TextStyle(color: subTextColor, fontSize: 40, height: 1.3),
                    ),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetaAppIcon(MetaAppItem app) {
    return Padding(
      padding: const EdgeInsets.only(right: 48.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(36), 
            decoration: BoxDecoration(
              color: metaBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(app.icon, color: textColor, size: 72), 
          ),
          const SizedBox(height: 24),
          Text(
            app.label, 
            style: TextStyle(color: subTextColor, fontSize: 36, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
