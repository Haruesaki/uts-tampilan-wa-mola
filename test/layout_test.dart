import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uts_tampilan_wa_mola/main.dart';

void main() {
  testWidgets('renders fixed 1220x2712 canvas across screen sizes and tabs', (tester) async {
    for (final size in const [Size(1920, 1080), Size(1366, 768), Size(800, 600)]) {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // Verify Chats tab
      expect(find.text('WhatsApp'), findsOneWidget);
      expect(find.text('Ask Meta AI or Search'), findsOneWidget);
      expect(find.text('Archived'), findsOneWidget);
      expect(find.text('12'), findsOneWidget);
      expect(find.text('귀요미..!'), findsOneWidget);
      expect(find.text('avenue of vanity - Haruesaki'), findsOneWidget);
      expect(find.text('Laurenn (You)'), findsOneWidget);
      expect(find.text('99+'), findsOneWidget);

      // Navigate to Updates
      await tester.tap(find.text('Updates'));
      await tester.pumpAndSettle();
      expect(find.text('Updates'), findsNWidgets(2));

      // Navigate to Communities
      await tester.tap(find.text('Communities'));
      await tester.pumpAndSettle();
      expect(find.text('Communities'), findsNWidgets(2));

      // Navigate to Calls
      await tester.tap(find.text('Calls'));
      await tester.pumpAndSettle();
      expect(find.text('Recent'), findsOneWidget);
      expect(find.text('Arif Mi'), findsOneWidget);
      expect(find.text('+62 858-9623-6762'), findsOneWidget);
      expect(find.text('kak hanif (2)'), findsOneWidget);
      expect(find.text('Call'), findsOneWidget);
      expect(find.text('Schedule'), findsOneWidget);
      expect(find.text('Keypad'), findsOneWidget);
      expect(find.text('Favorites'), findsOneWidget);

      // Navigate back to Chats
      await tester.tap(find.text('Chats'));
      await tester.pumpAndSettle();
      expect(find.text('WhatsApp'), findsOneWidget);

      expect(tester.takeException(), isNull);
    }
  });
}
