import 'package:dart_algorithm_example/ordering/selection_sort.dart';
import 'package:dart_algorithm_example/util/data.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('selectionSort()', () {
    var data = getData();

    print('-- SelectionSort -- \n\n');

    //before
    print('Before Sorting: ');
    printData(data);

    //sort
    print('\n');
    selectionSort(data);

    //after
    print('After Sorting: ');
    printData(data);

    print('\nTest Passed!');
  });
}
