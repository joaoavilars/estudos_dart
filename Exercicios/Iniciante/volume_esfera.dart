import 'dart:io';

void main() {
  double pi = 3.14159;
  String? stringRaio = stdin.readLineSync();
  double raio = double.parse(stringRaio!);
  double raioCubico = raio * raio * raio;
  double volEsfera = (4 / 3.0) * pi * raioCubico;
  String volEsferaFormatado = volEsfera.toStringAsFixed(3);
  print('VOLUME = $volEsferaFormatado');
}
