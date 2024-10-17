class Tabulation {
  double _rangeFrom = -3.0;
  double _rangeTo = 3.0;
  double step;
  double? _minValue;
  double? _maxValue;
  double _sum = 0.0;
  int _count = 0;
  double epsilon = 1e-10; // For numbers very close to zero

  // Constructor
  Tabulation({required this.step, double rangeFrom = -3.0, double rangeTo = 3.0});

  void setRangeFrom(double value) {
    _rangeFrom = value;
  }

  void setRangeTo(double value) {
    _rangeTo = value;
  }
  // Run tabulation
  void run() {
    // print("From: ${_rangeFrom}, To: ${_rangeTo}");
    for (double x = _rangeFrom; x <= _rangeTo; x += step) {
      if (x == 0.0 || x.abs() < epsilon) continue;

      double y = (x * x - x) / (x * x * x);
      y = double.parse(y.toStringAsFixed(2));
      if (_minValue == null || y < _minValue!) {
        _minValue = y;
      }
      if (_maxValue == null || y > _maxValue!) {
        _maxValue = y;
      }

      _sum += y;
      _count++;
      //print("Sum: ${_sum}, Y: ${y}, $x");
    }
  }

  // Returns average value
  double getAverage() {
    return _sum / _count;
  }

  // Returns min value
  double? getMin() {
    return _minValue;
  }

  // Returns max value
  double? getMax() {
    return _maxValue;
  }

  // Returns sum of all y values
  double? getSum () {
    return _sum;
  }
}
