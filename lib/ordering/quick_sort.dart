void quickSort(List<int> data) {
  var lower = 0;
  var upper = data.length - 1;

  if (upper > lower) {
    var partitionIndex = _partition(data, lower, upper);

    _internalQuickSort(data, lower, partitionIndex - 1);
    _internalQuickSort(data, partitionIndex + 1, upper);
  }
  return null;
}

void _swap(List<int> data, int first, int second) {
  var value1 = data[first];
  var value2 = data[second];
  var temp = value1;
  value1 = value2;
  value2 = temp;
  data[first] = value1;
  data[second] = value2;
}

int _partition(List<int> data, int lower, int upper) {
  var i = (lower - 1);
  var pivot = data[upper];

  for (var j = lower; j < upper; j++) {
    if (data[j] <= pivot) {
      i++;
      _swap(data, i, j);
    }
  }

  _swap(data, i + 1, upper);
  return (i + 1);
}

void _internalQuickSort(List<int> data, int lower, int upper) {
  if (upper > lower) {
    // partitioning index is returned by the partition method , partition
    // element is at its correct poition
    var partitionIndex = _partition(data, lower, upper);

    // Sorting elements before and after the partition index
    _internalQuickSort(data, lower, partitionIndex - 1);
    _internalQuickSort(data, partitionIndex + 1, upper);
  }
}
