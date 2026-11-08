import 'package:flutter/material.dart';
import '../core/theme/wa_colors.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WaColors.background,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(56, 32, 56, 12),
                child: Row(
                  children: [
                    const Text(
                      '10:15',
                      style: TextStyle(
                        color: WaColors.textPrimary,
                        fontSize: 44,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.signal_cellular_alt, color: WaColors.textPrimary, size: 44),
                    const SizedBox(width: 14),
                    const Icon(Icons.wifi, color: WaColors.textPrimary, size: 44),
                    const SizedBox(width: 14),
                    Transform.rotate(
                      angle: 1.57,
                      child: const Icon(Icons.battery_full, color: WaColors.textPrimary, size: 48),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 8),
                child: Row(
                  children: [
                    const Text(
                      'Pembaruan',
                      style: TextStyle(
                        color: WaColors.textPrimary,
                        fontSize: 68,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.search, color: WaColors.textPrimary, size: 75),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    const SizedBox(width: 32),
                    IconButton(
                      icon: const Icon(Icons.more_vert, color: WaColors.textPrimary, size: 75),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Status',
                      style: TextStyle(
                        color: WaColors.textPrimary,
                        fontSize: 56,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Material(
                      color: WaColors.surfaceSecondary,
                      shape: const CircleBorder(),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Icon(
                            Icons.lock,
                            color: WaColors.textPrimary,
                            size: 48,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 24),
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 160,
                            height: 160,
                            decoration: const BoxDecoration(
                              color: WaColors.statusAvatarBg,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.person,
                              color: WaColors.primaryGreen,
                              size: 96,
                            ),
                          ),
                          Positioned(
                            bottom: -2,
                            right: -2,
                            child: Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                color: WaColors.primaryGreen,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: WaColors.background,
                                  width: 6,
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: WaColors.background,
                                size: 44,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 44),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tambah Status',
                              style: TextStyle(
                                color: WaColors.textPrimary,
                                fontSize: 52,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Akan hilang setelah 24 jam',
                              style: TextStyle(
                                color: WaColors.textSecondary,
                                fontSize: 40,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Saluran',
                      style: TextStyle(
                        color: WaColors.textPrimary,
                        fontSize: 56,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Material(
                      color: WaColors.surfaceSecondary,
                      borderRadius: BorderRadius.circular(72),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(72),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 22,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.grid_view_rounded,
                                color: WaColors.textPrimary,
                                size: 48,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Jelajahi',
                                style: TextStyle(
                                  color: WaColors.textPrimary,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 52, vertical: 12),
                child: Text(
                  'Dapatkan berita terbaru tentang topik yang Anda minati. '
                  'Saluran yang Anda ikuti akan ditampilkan di sini.',
                  style: TextStyle(
                    color: WaColors.textSecondary,
                    fontSize: 40,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 60,
            right: 52,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 135,
                  height: 135,
                  decoration: BoxDecoration(
                    color: WaColors.surfaceSecondary,
                    borderRadius: BorderRadius.circular(42),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 16,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.edit,
                      color: WaColors.textPrimary,
                      size: 60,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: WaColors.primaryGreen,
                    borderRadius: BorderRadius.circular(54),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.add_a_photo,
                      color: Color(0xFF0B141A),
                      size: 82,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
