void main() {
  const double start = -2.0;
  const double end = 3.0;
  const double step = 0.1;

  double? minY;
  double? maxY;

  print("Табулювання функції y = 13 - 5 * x + x^2 в діапазоні ($start, $end] з кроком $step:");

  for (double x = start; x <= end; x += step) {
    double y = 13 - 5 * x + x * x;
    print("x = ${x.toStringAsFixed(2)}, y = ${y.toStringAsFixed(2)}");

    if (minY == null || y < minY) {
      minY = y;
    }
    if (maxY == null || y > maxY) {
      maxY = y;
    }
  }

  print("\nМінімальне значення функції: ${minY?.toStringAsFixed(2)}");
  print("Максимальне значення функції: ${maxY?.toStringAsFixed(2)}");
}