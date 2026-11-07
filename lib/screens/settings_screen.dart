import 'package:flutter/material.dart';
import '../data/dummy_data.dart'; 
import '../models/setting_item.dart'; 
import 'profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  final Color bgColor = const Color(0xFF0B141A);
  final Color textColor = Colors.white;
  final Color subTextColor = const Color(0xFF8696A0);
  final Color iconColor = const Color(0xFF8696A0);
  final Color metaBgColor = const Color(0xFF1F2C34);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColor, size: 32),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search, color: textColor, size: 32), onPressed: () {}),
          IconButton(icon: Icon(Icons.qr_code_scanner, color: textColor, size: 32), onPressed: () {}),
          IconButton(icon: Icon(Icons.edit_outlined, color: textColor, size: 32), onPressed: () {}),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            
            InkWell(
              onTap: () {
                // Navigasi ke halaman Profil
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10), 
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 25, bottom: 25),
                            child: const CircleAvatar(
                              radius: 85,
                              backgroundImage: NetworkImage('https://wallpaperset.com/w/full/3/d/b/198619.jpg'), 
                            ),
                          ),
                          Positioned(
                            top: -5,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              decoration: BoxDecoration(
                                color: metaBgColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Text(
                                "Ada kabar apa?", 
                                style: TextStyle(color: subTextColor, fontSize: 18)
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
                            style: TextStyle(color: textColor, fontSize: 32, fontWeight: FontWeight.w400)
                          ),
                          const SizedBox(width: 8),
                          Icon(Icons.keyboard_arrow_down, color: textColor, size: 36),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 40),
            ...settingsList.map((item) => _buildSettingItem(item)).toList(),
            
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Juga dari Meta", style: TextStyle(color: subTextColor, fontSize: 18, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: metaAppsList.map((app) => _buildMetaAppIcon(app)).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80), 
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(SettingItem item) {
    return InkWell(
      onTap: () {},
      child: Padding(
        // Padding atas-bawah dilebarkan menjadi 26 (sebelumnya 20)
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 26), 
        child: Row(
          crossAxisAlignment: item.subtitle != null 
              ? CrossAxisAlignment.start 
              : CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: item.subtitle != null ? 2.0 : 0.0),
              child: Icon(item.icon, color: iconColor, size: 42), 
            ),
            const SizedBox(width: 36), 
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
                          style: TextStyle(color: textColor, fontSize: 26, fontWeight: FontWeight.w400) 
                        ),
                      ),
                      if (item.isNew) ...[
                        const SizedBox(width: 14),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF00A884),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Text("Baru", style: TextStyle(color: Color(0xFF0B141A), fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      ]
                    ],
                  ),
                  if (item.subtitle != null) ...[
                    const SizedBox(height: 10), 
                    Text(
                      item.subtitle!, 
                      // Ukuran Font Subtitle diperbesar menjadi 19 (sebelumnya 17)
                      style: TextStyle(color: subTextColor, fontSize: 19, height: 1.3) 
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
      padding: const EdgeInsets.only(right: 32.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(22), 
            decoration: BoxDecoration(
              color: metaBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(app.icon, color: textColor, size: 42), 
          ),
          const SizedBox(height: 16),
          Text(
            app.label, 
            style: TextStyle(color: subTextColor, fontSize: 16, fontWeight: FontWeight.w500) 
          ),
        ],
      ),
    );
  }
}