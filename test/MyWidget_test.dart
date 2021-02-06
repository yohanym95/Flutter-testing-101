import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing_101/MyWidget.dart';

void main() {
  testWidgets('My Widget Test', (WidgetTester tester) async {

    await tester.pumpWidget(MyWidget(
      title: "test title",
      message: "message body",
    ));

    //creates finder
    final titleFinder = find.text('test title');
    final messageFinder = find.text('message body');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
