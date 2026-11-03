import 'package:flutter/material.dart';
import '../models/chat_item.dart';
import 'avatar_icon.dart';

class CallTile extends StatelessWidget {
  final CallItem call;

  const CallTile({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    const mainText = Color(0xFFE9EDEF);
    const secondaryText = Color(0xFF8696A0);
    const missedColor = Color(0xFFF15C6D);
    const outgoingColor = Color(0xFF25D366);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: SizedBox(
        height: 240,
        child: Row(
          children: [
            AvatarIcon(
              backgroundColor: call.avatarBg,
              iconColor: call.avatarIcon,
            ),
            const SizedBox(width: 38),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    call.name,
                    style: TextStyle(
                      color: call.isMissed ? missedColor : mainText,
                      fontSize: 52,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (call.subtitle != null) ...[
                    const SizedBox(height: 6),
                    Text(
                      call.subtitle!,
                      style: const TextStyle(
                        color: secondaryText,
                        fontSize: 44,
                      ),
                    ),
                  ],
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        call.isMissed ? Icons.call_received : Icons.call_made,
                        size: 44,
                        color: call.isMissed ? missedColor : outgoingColor,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          call.dateTime,
                          style: const TextStyle(
                            color: secondaryText,
                            fontSize: 42,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.call_outlined, color: mainText, size: 72),
          ],
        ),
      ),
    );
  }
}
