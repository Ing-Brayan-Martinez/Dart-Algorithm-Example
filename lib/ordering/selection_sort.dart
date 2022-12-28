void selectionSort(List<int> data) {
  for (var i = 0; i < data.length - 1; i++) {
    var min_index = i;
    for (var j = i + 1; j < data.length; j++) {
      if (data[min_index] > data[j]) {
        min_index = j;
      }
    }
    if (min_index != i) {
      _swap(i, min_index, data);
    }
  }
}

void _swap(int first, int second, List<int> data) {
  var value1 = data[first];
  var value2 = data[second];
  var temp = value1;
  value1 = value2;
  value2 = temp;
  data[first] = value1;
  data[second] = value2;
}
