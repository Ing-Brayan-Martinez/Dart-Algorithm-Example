import 'package:dart_algorithm_example/dynamic/pattern.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('pattern()', () {
    final element = Div();

    print('-- Pattern -- \n\n');

    // if (element is Div) {
    //   print('div');
    // }
    //
    // if (element is HtmlElement) {
    //   print('html element');
    // }
    //
    // if (element is Element) {
    //   print('element');
    // }

    print(getElement(element) + '\n\n');

    print('Test Passed!');
  });

  test('pattern2()', () {
    final Object value = 'maria';

    print('-- Pattern 2 -- \n\n');

    if (value is String) {
      print(value.toUpperCase());
    }

    if (value is int) {
      print(value.round());
    }

    if (value is double) {
      print(value.ceil());
    }

    print('\n\n');

    print('Test Passed!');
  });
}
