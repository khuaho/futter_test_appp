import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futter_test_appp/modules/scroll_list_view.dart';

void main() {
  testWidgets(
    'List view scrolling test',
    (tester) async {
      // Create the widget by telling the tester to build it.

      await tester.pumpWidget(
        MaterialApp(
          home: ScrollListView(
            items: List<String>.generate(10000, (i) => 'Item $i'),
          ),
        ),
      );

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byKey(const ValueKey('item_50_text'));

      // Scroll until the item to be found appears
      await tester.scrollUntilVisible(
        itemFinder,
        500.0,
        scrollable: listFinder,
      );

      expect(itemFinder, findsOneWidget);
    },
  );
}
