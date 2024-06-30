void bubbleSort(List<int> data) {
  for (var i = 0; i < data.length - 1; i++) {
    var breakCount = 0;
    for (var j = 0; j < data.length - i - 1; j++) {
      if (data[j] > data[j + 1]) {
        _swap(j, j + 1, data);
        breakCount++;
      }
    }
    if (breakCount == 0) {
      break;
    }
  }
}

void _swap(int first, int second, List<int> data) {
  var value1 = data[first];
  var value2 = data[second];
  final temp = value1;
  value1 = value2;
  value2 = temp;
  data[first] = value1;
  data[second] = value2;
}
