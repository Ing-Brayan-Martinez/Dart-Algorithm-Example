int fibonacci(int n) {
  /* If the input is 0 or 1 just return the same
       This will set the first 2 values of the sequence */
  if (n <= 1) {
    return n;
  }

  /* Add the last 2 values of the sequence to get next */
  return fibonacci(n - 1) + fibonacci(n - 2);
}
