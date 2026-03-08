import 'package:optional/optional.dart';

Optional<int> binarySearch<T>(List<T> arr, T objective) {
  int left = 0;
  int right = arr.length;

  while (left < right) {
    final mid = left + (right - left) ~/ 2; // ~> división entera

    final comparison = _Other<T>(arr[mid]).compareTo(objective);

    if (comparison == 0) {
      return Optional.of(mid);
    } else if (comparison < 0) {
      left = mid + 1;
    } else {
      right = mid;
    }
  }

  return Optional.empty();
}

class _Other<T> implements Comparable<T> {
  final T value;
  _Other(this.value);

  int compareTo(T other) {
    if (value is int && other is int) {
      return (value as int).compareTo(other as int);
    } else if (value is String && other is String) {
      return (value as String).compareTo(other as String);
    } else if (value is double && other is double) {
      return (value as double).compareTo(other as double);
    } else {
      return (value as Comparable<T>).compareTo(other);
    }
  }
}
