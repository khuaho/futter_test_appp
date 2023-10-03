// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:futter_test_appp/main.dart';
import 'package:futter_test_appp/modules/my_widget.dart';

void main() {
  testWidgets('MyWidget has a title and message', (tester) async {
    // Create the widget by telling the tester to build it.

    await tester.pumpWidget(
      const MaterialApp(
        home: MyWidget(title: 'T', message: 'M'),
      ),
    );

    // Create the Finders.
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');
    // final k = find.by

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
