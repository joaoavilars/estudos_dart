import 'dart:io';

void main() {
  print('Digite o raio da circunferencia: ');
  String? stringRaio = stdin.readLineSync();
  double n = 3.14159;
  double raio = double.parse(stringRaio!);
  double area = n * (raio * raio);
  //limita valr a 4 casas decimais
  String areaFormatada = area.toStringAsFixed(4);
  print('AREA = $areaFormatada');
}
