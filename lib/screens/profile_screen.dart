import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  final Color bgColor = const Color(0xFF0B141A);
  final Color textColor = Colors.white;
  final Color subTextColor = const Color(0xFF8696A0);
  final Color iconColor = const Color(0xFF8696A0);
  final Color whatsappGreen = const Color(0xFF00A884);

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
        title: Text(
          "Profil",
          style: TextStyle(color: textColor, fontSize: 26, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 95, 
                    backgroundImage: NetworkImage('https://wallpaperset.com/w/full/3/d/b/198619.jpg'), 
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: Container(
                      padding: const EdgeInsets.all(14), 
                      decoration: BoxDecoration(
                        color: whatsappGreen,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Color(0xFF0B141A), 
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),

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
            
            const SizedBox(height: 40),
          ],
        ),
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22), 
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 32), 
            const SizedBox(width: 30), 
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: subTextColor, 
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: isSubtitleGreen ? whatsappGreen : textColor, 
                      fontSize: 22, 
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