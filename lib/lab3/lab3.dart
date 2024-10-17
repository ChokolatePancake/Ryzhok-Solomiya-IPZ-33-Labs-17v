import 'package:flutter/tabulation.dart';

void main() {
  final tabulator = Tabulation(step: 0.1);

  tabulator.setRangeFrom(-2.0);
  tabulator.setRangeTo(3.0);

  tabulator.run();

  print("Середнє арифметичне значення функції: ${tabulator.getAverage()}");
  print("Мінімальне значення функції: ${tabulator.getMin()}");
  print("Максимальне значення функції: ${tabulator.getMax()}");
}
