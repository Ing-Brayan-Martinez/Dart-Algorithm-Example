import 'package:dart_algorithm_example/ordering/bubble_sort.dart';
import 'package:dart_algorithm_example/util/data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //unit test
  test('bubbleSort()', () {
    var data = getData();

    print('-- BubbleSort -- \n\n');

    //before
    print('Before Sorting: ');
    printData(data);

    //sort
    print('\n');
    bubbleSort(data);

    //after
    print('After Sorting: ');
    printData(data);

    print('\nTest Passed!');
  });
}
