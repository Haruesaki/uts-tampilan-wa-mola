import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final Color bgColor = const Color(0xFF0B141A);
  final Color textColor = Colors.white;
  final Color subTextColor = const Color(0xFF8696A0);
  final Color iconColor = const Color(0xFF8696A0);
  final Color whatsappGreen = const Color(0xFF00A884);

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
                const SizedBox(width: 48),
                Text(
                  "Profil",
                  style: TextStyle(color: textColor, fontSize: 68, fontWeight: FontWeight.normal),
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
                  const SizedBox(height: 50),
                  
                  Center(
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 180, 
                          backgroundColor: Color(0xFF1F2C34),
                          backgroundImage: NetworkImage('https://wallpaperset.com/w/full/3/d/b/198619.jpg'), 
                          child: Icon(Icons.person, size: 180, color: Color(0xFF8696A0)),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.all(28), 
                            decoration: BoxDecoration(
                              color: whatsappGreen,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Color(0xFF0B141A), 
                              size: 64,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),

                  _buildProfileItem(
                    icon: Icons.person_outline,
                    title: "Nama",
                    subtitle: "Fauzan Adzim",
                  ),
                  _buildProfileItem(
                    icon: Icons.info_outline,
                    title: "Tentang",
                    subtitle: "Atur isi Tentang",
                    isSubtitleGreen: true,
                  ),
                  _buildProfileItem(
                    icon: Icons.alternate_email,
                    title: "Nama pengguna",
                    subtitle: "Pesan nama pengguna",
                    isSubtitleGreen: true,
                  ),
                  _buildProfileItem(
                    icon: Icons.phone_outlined,
                    title: "Telepon",
                    subtitle: "+62 821-2455-8730",
                  ),
                  _buildProfileItem(
                    icon: Icons.link,
                    title: "Tautan",
                    subtitle: "Tambah tautan",
                    isSubtitleGreen: true,
                  ),
                  
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileItem({
    required IconData icon,
    required String title,
    required String subtitle,
    bool isSubtitleGreen = false,
  }) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 32), 
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 72), 
            const SizedBox(width: 48), 
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: subTextColor, 
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: isSubtitleGreen ? whatsappGreen : textColor, 
                      fontSize: 52, 
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
