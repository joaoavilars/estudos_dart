import 'dart:io';

void main() {
  String? stringFunc = stdin.readLineSync();
  String? stringHoras = stdin.readLineSync();
  String? stringValor = stdin.readLineSync();
  int func = int.parse(stringFunc!);
  int horas = int.parse(stringHoras!);
  double valor = double.parse(stringValor!);
  double salario = (valor * horas);
  String salarioFormatado = salario.toStringAsFixed(2);
  print('NUMBER = $func');
  print('SALARY = U\$ $salarioFormatado');
}
