import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing_101/logic/reverse.dart';

void main() {
  test('String should be reversed', () {
    String initial = "Hello";
    String reversed = new Reverse().reverseString(initial);
    expect(reversed, "olleH");
  });
}
