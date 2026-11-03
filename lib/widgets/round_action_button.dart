import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const RoundActionButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF1F2C34),
          ),
          child: Icon(icon, color: const Color(0xFFE9EDEF), size: 76),
        ),
        const SizedBox(height: 20),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF8696A0),
            fontSize: 38,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
