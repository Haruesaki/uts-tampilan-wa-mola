import 'package:flutter/material.dart';
import '../core/theme/wa_colors.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WaColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(56, 68, 56, 16),
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
                  'Komunitas',
                  style: TextStyle(
                    color: WaColors.textPrimary,
                    fontSize: 68,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Spacer(),
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
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 28),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          color: WaColors.communityAvatarBg,
                          borderRadius: BorderRadius.circular(44),
                        ),
                        child: const Icon(
                          Icons.groups,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                      Positioned(
                        bottom: -4,
                        right: -4,
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
                    child: Text(
                      'Komunitas baru',
                      style: TextStyle(
                        color: WaColors.textPrimary,
                        fontSize: 52,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Divider(
              color: WaColors.divider,
              thickness: 2,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
