import 'dart:io';

void main() {
  String? stringA = stdin.readLineSync();
  String? stringB = stdin.readLineSync();
  String? stringC = stdin.readLineSync();
  String? stringD = stdin.readLineSync();
  int A = int.parse(stringA!);
  int B = int.parse(stringB!);
  int C = int.parse(stringC!);
  int D = int.parse(stringD!);

  int dif = (A * B - C * D);
  print('DIFERENCA = $dif');
}
