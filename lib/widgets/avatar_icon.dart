import 'package:flutter/material.dart';

class AvatarIcon extends StatelessWidget {
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  const AvatarIcon({
    super.key,
    this.size = 165,
    this.iconSize = 105,
    this.backgroundColor = const Color(0xFF2A3942),
    this.iconColor = const Color(0xFF8696A0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      alignment: Alignment.center,
      child: Icon(Icons.person, color: iconColor, size: iconSize),
    );
  }
}
