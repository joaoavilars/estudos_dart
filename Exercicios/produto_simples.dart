import 'dart:io';

void main() {
  String? stringA = stdin.readLineSync();
  String? stringB = stdin.readLineSync();
  int A = int.parse(stringA!);
  int B = int.parse(stringB!);
  int prod = A * B;
  print('PROD = $prod');
}
