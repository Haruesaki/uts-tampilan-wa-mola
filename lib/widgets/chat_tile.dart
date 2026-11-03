import 'package:flutter/material.dart';
import '../models/chat_item.dart';
import 'avatar_icon.dart';

class ChatTile extends StatelessWidget {
  final ChatItem chat;

  const ChatTile({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    const mainText = Color(0xFFE9EDEF);
    const secondaryText = Color(0xFF8696A0);
    const checkBlue = Color(0xFF53BDEB);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: SizedBox(
        height: 240,
        child: Row(
          children: [
            const AvatarIcon(),
            const SizedBox(width: 38),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          chat.name,
                          style: const TextStyle(
                            color: mainText,
                            fontSize: 52,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        chat.time,
                        style: const TextStyle(
                          color: secondaryText,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.done_all,
                        size: 52,
                        color: chat.isRead ? checkBlue : secondaryText,
                      ),
                      const SizedBox(width: 12),
                      if (chat.isPhoto) ...[
                        const Icon(
                          Icons.image,
                          size: 52,
                          color: secondaryText,
                        ),
                        const SizedBox(width: 12),
                      ],
                      Expanded(
                        child: Text(
                          chat.message,
                          style: const TextStyle(
                            color: secondaryText,
                            fontSize: 44,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      if (chat.isPinned)
                        Transform.rotate(
                          angle: 0.7,
                          child: const Icon(
                            Icons.push_pin,
                            size: 54,
                            color: secondaryText,
                          ),
                        ),
                    ],
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
