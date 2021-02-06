import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing_101/main.dart';
import 'package:widget_testing_101/reverseWidget.dart';

void main() {
  testWidgets("Reverse String widget test", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ReverseWidget(),
    ));
    final textField = find.byType(TextField);
    expect(textField, findsOneWidget);

    await tester.enterText(textField, "Hello");
    expect(find.text('Hello'), findsOneWidget);

    var button = find.text("Reverse");
    expect(button, findsOneWidget);

    await tester.tap(button);

    await tester.pump();

    expect(find.text('olleH'), findsOneWidget);
    
  });
}
