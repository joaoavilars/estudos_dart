import 'dart:io';

void main() {
  String? stringNotaA = stdin.readLineSync();
  String? stringNotaB = stdin.readLineSync();
  double notaA = double.parse(stringNotaA!);
  double notaB = double.parse(stringNotaB!);
  double pesoA = 3.5;
  double pesoB = 7.5;

  double media = (notaA * pesoA + notaB * pesoB) / (pesoA + pesoB);
  String mediaFormatada = media.toStringAsFixed(5);

  print('MEDIA = $mediaFormatada');
}
