import 'package:flutter/material.dart';
import '../models/chat_item.dart';
import '../models/setting_item.dart';

const chats = [
  ChatItem(
    name: '귀요미..!',
    message: 'avenue of vanity - Haruesaki',
    time: '10:15 PM',
    isPinned: true,
    isRead: false,
    isPhoto: false,
  ),
  ChatItem(
    name: 'Laurenn (You)',
    message: 'Photo',
    time: '11:13 AM',
    isPinned: true,
    isRead: true,
    isPhoto: true,
  ),
];

const calls = [
  CallItem(
    name: 'Arif Mi',
    dateTime: 'Yesterday, 9:46 AM',
    isMissed: true,
    avatarBg: Color(0xFF2A3942),
    avatarIcon: Color(0xFF8696A0),
  ),
  CallItem(
    name: '+62 858-9623-6762',
    subtitle: '~ fzly',
    dateTime: 'November 1, 10:46 AM',
    isMissed: false,
    avatarBg: Color(0xFF4A1D33),
    avatarIcon: Color(0xFFF06292),
  ),
  CallItem(
    name: 'kak hanif (2)',
    dateTime: 'October 30, 1:57 PM',
    isMissed: false,
    avatarBg: Color(0xFF3E3320),
    avatarIcon: Color(0xFFFFCA28),
  ),
];

final List<SettingItem> settingsList = [
  SettingItem(icon: Icons.star_outline, title: "Langganan", subtitle: "Jelajahi keuntungan premium"),
  SettingItem(icon: Icons.devices, title: "Perangkat tertaut", subtitle: "Gunakan WhatsApp di perangkat lain"),
  SettingItem(icon: Icons.vpn_key_outlined, title: "Akun", subtitle: "Notifikasi keamanan, ganti nomor"),
  SettingItem(icon: Icons.lock_outline, title: "Privasi", subtitle: "Akun diblokir, pesan sementara"),
  SettingItem(icon: Icons.contact_page_outlined, title: "Daftar", subtitle: "Kelola orang dan grup"),
  SettingItem(icon: Icons.chat_outlined, title: "Chat", subtitle: "Riwayat obrolan, cadangan"),
  SettingItem(icon: Icons.palette_outlined, title: "Tampilan", subtitle: "Tema obrolan, ikon aplikasi, tema aplikasi"),
  SettingItem(icon: Icons.campaign_outlined, title: "Siaran", subtitle: "Kelola daftar dan kirim siaran"),
  SettingItem(icon: Icons.calendar_today, title: "Acara Baru", subtitle: "Lihat dan kelola acara", isNew: true),
  SettingItem(icon: Icons.notifications_none, title: "Notifikasi", subtitle: "Pesan, grup & nada dering panggilan"),
  SettingItem(icon: Icons.data_usage, title: "Penyimpanan dan data", subtitle: "Penggunaan jaringan, unduh otomatis"),
  SettingItem(icon: Icons.child_care, title: "Kontrol orang tua", subtitle: "Pengaturan untuk keluarga Anda"),
  SettingItem(icon: Icons.accessibility_new, title: "Aksesibilitas", subtitle: "Tingkatkan kontras, animasi"),
  SettingItem(icon: Icons.language, title: "Bahasa Aplikasi", subtitle: "Bahasa Indonesia (bahasa perangkat)"),
  SettingItem(icon: Icons.help_outline, title: "Bantuan dan masukan", subtitle: "Pusat Bantuan, hubungi kami, Kebijakan Privasi"),
  SettingItem(icon: Icons.group_add_outlined, title: "Undang teman"),
  SettingItem(icon: Icons.system_update_alt, title: "Pembaruan aplikasi"),
  SettingItem(icon: Icons.all_inclusive, title: "Pusat Akun", subtitle: "Kendalikan pengalaman Anda di WhatsApp, Facebook, Instagram, dan lainnya."),
];

final List<MetaAppItem> metaAppsList = [
  MetaAppItem(icon: Icons.camera_alt, label: "Instagram"),
  MetaAppItem(icon: Icons.facebook, label: "Facebook"),
  MetaAppItem(icon: Icons.alternate_email, label: "Threads"),
  MetaAppItem(icon: Icons.group_work, label: "Aplikasi Meta AI"),
  MetaAppItem(icon: Icons.play_circle_outline, label: "Aplikasi Vibes"),
];