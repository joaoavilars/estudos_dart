import 'dart:io';

void main() {
  String? stringKm = stdin.readLineSync();
  String? stringCombus = stdin.readLineSync();
  int dist = int.parse(stringKm!);
  double combus = double.parse(stringCombus!);
  double consumo = dist / combus;
  String formatConsumo = consumo.toStringAsFixed(3);

  print('$formatConsumo km/l');
}
