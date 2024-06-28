import 'package:dart_algorithm_example/dynamic/fizzbuzz.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('fizzbuzz()', () {
    final num = 20;
    final expectedValue = 'Buzz';

    print('-- FizzBuzz -- \n\n');

    var resultValue = fizzbuzz(num);

    print('FizzBuzz of $num  is $resultValue \n\n');

    expect(expectedValue, resultValue);

    print('\nTest Passed!');
  });
}
