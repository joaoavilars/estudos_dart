import 'dart:io';

void main() {
  String? stringNotaA = stdin.readLineSync();
  String? stringNotaB = stdin.readLineSync();
  String? stringNotaC = stdin.readLineSync();
  double notaA = double.parse(stringNotaA!);
  double notaB = double.parse(stringNotaB!);
  double notaC = double.parse(stringNotaC!);
  double pesoA = 2.0;
  double pesoB = 3.0;
  double pesoC = 5.0;

  double media =
      (notaA * pesoA + notaB * pesoB + notaC * pesoC) / (pesoA + pesoB + pesoC);
  String mediaFormatada = media.toStringAsFixed(1);

  print('MEDIA = $mediaFormatada');
}
