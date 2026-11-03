import 'package:flutter/material.dart';

class ChatItem {
  final String name;
  final String message;
  final String time;
  final bool isPinned;
  final bool isRead; // true = centang biru
  final bool isPhoto; // true = tampilkan ikon gambar sebelum teks

  const ChatItem({
    required this.name,
    required this.message,
    required this.time,
    this.isPinned = false,
    this.isRead = false,
    this.isPhoto = false,
  });
}

class CallItem {
  final String name;
  final String? subtitle;
  final String dateTime;
  final bool isMissed; // true = nama dan ikon merah, ikon call_received
  final Color avatarBg;
  final Color avatarIcon;

  const CallItem({
    required this.name,
    this.subtitle,
    required this.dateTime,
    this.isMissed = false,
    required this.avatarBg,
    required this.avatarIcon,
  });
}
