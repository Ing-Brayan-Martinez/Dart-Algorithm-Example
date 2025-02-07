import 'package:dart_algorithm_example/dynamic/fibonacci.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //unit test
  test('fibonacci()', () {
    final num = 20;
    final expectedValue = 6765;

    print('-- Fibonacci -- \n\n');

    var resultValue = fibonacci(num);

    print('Fibonacci of $num  is $resultValue \n\n');

    expect(expectedValue, resultValue);

    print('Test Passed!');
  });
}
