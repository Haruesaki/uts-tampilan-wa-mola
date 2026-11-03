import 'package:flutter/material.dart';
import '../models/chat_item.dart';

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
