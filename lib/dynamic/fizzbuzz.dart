String fizzbuzz(int n) {
  return switch (n) {
    int x when x % 3 == 0 && x % 5 == 0 => 'FizzBuzz',
    int x when x % 3 == 0 => 'Fizz',
    int x when x % 5 == 0 => 'Buzz',
    _ => '$n'
  };
}
