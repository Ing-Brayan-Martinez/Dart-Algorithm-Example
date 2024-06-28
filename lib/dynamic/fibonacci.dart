int fibonacci(int n) {
  return switch (n) {
    0 => 0,
    1 => 1,
    _ => fibonacci(n - 1) + fibonacci(n - 2)
  };
}
