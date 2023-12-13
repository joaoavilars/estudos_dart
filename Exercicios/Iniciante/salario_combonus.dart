import 'dart:io';

void main() {
  String? nome = stdin.readLineSync();
  String? stringSalario = stdin.readLineSync();
  String? stringVendas = stdin.readLineSync();
  double salario = double.parse(stringSalario!);
  double vendas = double.parse(stringVendas!);
  double comissao = vendas * 0.15;
  double total = salario + comissao;
  String totalFormatado = total.toStringAsFixed(2);
  print('NOME: $nome TOTAL = R\$ $totalFormatado');
}
