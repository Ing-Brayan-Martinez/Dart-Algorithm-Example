import 'package:dart_algorithm_example/ordering/quick_sort.dart';
import 'package:dart_algorithm_example/util/data.dart';
import 'package:test/test.dart';

void main() {
  //unit test
  test('quickSort()', () {
    var data = getData();

    print('-- QuickSort -- \n\n');

    //before
    print('Before Sorting: ');
    printData(data);

    //sort
    print('\n');
    quickSort(data);

    //after
    print('After Sorting: ');
    printData(data);

    print('\nTest Passed!');
  });
}
