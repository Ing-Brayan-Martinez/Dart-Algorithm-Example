import 'package:dart_algorithm_example/dinamica/prueba.dart';
import 'package:test/test.dart';

void main() {
  // Successful test for sum of array
  test('hola()', () {
    final expectedValue = 'hola desde la prueba';
    var actualValue = hola();
    expect(expectedValue, actualValue);
  });
}
