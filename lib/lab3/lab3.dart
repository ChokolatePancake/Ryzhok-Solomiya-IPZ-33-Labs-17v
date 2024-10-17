import 'tabulation.dart';

void main() {
  final tabulator = Tabulation(step: 0.1);

  // tabulator.setRangeFrom(-2.0);
  tabulator.setRangeTo(3.0);

  tabulator.run();

  print("Average: ${tabulator.getAverage()}");
  print("Min: ${tabulator.getMin()}");
  print("Max: ${tabulator.getMax()}");
  print("Sum: ${tabulator.getSum()}");
}
