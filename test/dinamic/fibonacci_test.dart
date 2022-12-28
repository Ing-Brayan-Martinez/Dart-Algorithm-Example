import 'package:dart_algorithm_example/dinamic/fibonacci.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('fibonacci()', () {
    final num = 20;
    final expectedValue = 6765;

    var resultValue = fibonacci(num);

    print('-- Fibonacci -- \n\n');

    print('Fibonacci of $num  is $resultValue \n\n');

    expect(expectedValue, resultValue);

    print('Test Passed!');
  });
}
