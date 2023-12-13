import 'dart:io';

void main() {
  String? stringA = stdin.readLineSync();
  String? stringB = stdin.readLineSync();
  int soma = int.parse(stringA!) + int.parse(stringB!);
  print('SOMA = $soma');
}
