void bubbleSort(List<int> data) {
  var swap_check = true;
  var n = data.length;

  for (var i = 0; (i < n) && (swap_check); i++) {
    swap_check = false;
    for (var j = 0; j < n - 1 - i; j++) {
      if (data[j] > data[j + 1]) {
        swap_check = true;
        _swap(j, j + 1, data);
      }
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
