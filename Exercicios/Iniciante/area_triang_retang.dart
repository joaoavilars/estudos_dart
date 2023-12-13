import 'dart:io';

void main() {
  List<String> dados = stdin.readLineSync()!.split(' ');
  double pi = 3.14159;
  double baseTri = double.parse(dados[0]);
  double altTri = double.parse(dados[2]);
  double baseGTrap = double.parse(dados[0]);
  double basePTrap = double.parse(dados[1]);
  double altTrap = double.parse(dados[2]);
  double ladoQuad = double.parse(dados[1]);
  double ladoRet = double.parse(dados[0]);
  double baseRet = double.parse(dados[1]);
  double raioCirc = double.parse(dados[2]);

  double areaTriangulo = 1 / 2 * baseTri * altTri;
  double areaTrapezio = 1 / 2 * (baseGTrap + basePTrap) * altTrap;
  double areaQuadrado = ladoQuad * ladoQuad;
  double areaRetangulo = ladoRet * baseRet;
  double areaCirculo = pi * (raioCirc * raioCirc);

  String formTriang = areaTriangulo.toStringAsFixed(3);
  String formTrapez = areaTrapezio.toStringAsFixed(3);
  String formQuadra = areaQuadrado.toStringAsFixed(3);
  String formRetang = areaRetangulo.toStringAsFixed(3);
  String formCircul = areaCirculo.toStringAsFixed(3);

  print('TRIANGULO: $formTriang');
  print('CIRCULO: $formCircul');
  print('TRAPEZIO: $formTrapez');
  print('QUADRADO: $formQuadra');
  print('RETANGULO: $formRetang');
}
