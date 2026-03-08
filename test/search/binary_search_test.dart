import 'package:dart_algorithm_example/search/binary_search.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('binarySearch()', () {
    final numbers = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
    print(binarySearch<int>(numbers, 13)); // 6
    print(binarySearch<int>(numbers, 8)); // null

    final words = ["apple", "banana", "cherry", "date", "kiwi"];
    print(binarySearch<String>(words, "cherry")); // 2
    print(binarySearch<String>(words, "mango")); // null

    print('');
    print('Test Passed!');
  });
}
