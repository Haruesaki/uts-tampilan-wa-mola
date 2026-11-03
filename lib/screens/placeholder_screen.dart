import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B141A),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF8696A0),
            fontSize: 56,
          ),
        ),
      ),
    );
  }
}
