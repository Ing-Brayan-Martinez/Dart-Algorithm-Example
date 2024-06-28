int factorial(int n) {
  return switch (n) {
    0 => 1,
    _ => n * factorial(n - 1),
  };
}
