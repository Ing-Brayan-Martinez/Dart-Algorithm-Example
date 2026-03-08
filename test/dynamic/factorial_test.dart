import 'package:dart_algorithm_example/dynamic/factorial.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('factorial()', () {
    final num = 5;
    final expectedValue = 120;

    print('-- Factorial -- \n\n');

    var resultValue = factorial(num);

    print('Factorial of $num  is $resultValue \n\n');

    expect(expectedValue, resultValue);

    print('Test Passed!');
  });
}
