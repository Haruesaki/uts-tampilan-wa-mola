import 'package:flutter/material.dart';

class SettingItem {
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool isNew;

  SettingItem({
    required this.icon,
    required this.title,
    this.subtitle,
    this.isNew = false,
  });
}

class MetaAppItem {
  final IconData icon;
  final String label;

  MetaAppItem({
    required this.icon,
    required this.label,
  });
}