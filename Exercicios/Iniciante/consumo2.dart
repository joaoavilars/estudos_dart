import 'dart:io';

void main() {
  String? strTempo = stdin.readLineSync();
  String? strVel = stdin.readLineSync();
  double tempo = double.parse(strTempo!);
  double vel = double.parse(strVel!);

  double distPercorrida = tempo * vel;
  double consumo = distPercorrida / 12;
  String consumoForm = consumo.toStringAsFixed(3);
  print(consumoForm);
}
