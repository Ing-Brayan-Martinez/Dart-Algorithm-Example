import 'package:dart_algorithm_example/dynamic/fizzbuzz.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('fizzbuzz()', () {
    final num = 20;

    print('-- FizzBuzz -- \n\n');

    fizzbuzz(num);

    print('\nTest Passed!');
  });
}
