import 'dart:io';

void main() {
  // no caso desse código ele necessita de duas linhas em sequencia
  // exemplo de entrada:
  // 12 1 5.30
  // 16 2 5.10
  // a linha abaixo le a linha de digitada separada por espaços e gera uma lista. no caso o split no final define o separador dos itens da lista
  List<String> lista1 = stdin.readLineSync()!.split(' ');
  int codPeca1 = int.parse(lista1[0]);
  int numPeca1 = int.parse(lista1[1]);
  double valPeca1 = double.parse(lista1[2]);

  List<String> lista2 = stdin.readLineSync()!.split(' ');
  int codPeca2 = int.parse(lista2[0]);
  int numPeca2 = int.parse(lista2[1]);
  double valPeca2 = double.parse(lista2[2]);

  double aPagar = (numPeca1 * valPeca1) + (numPeca2 * valPeca2);
  String aPagarFormatado = aPagar.toStringAsFixed(2);
  print('Lista peças: $codPeca1 $codPeca2');
  print('VALOR A PAGAR: R\$ $aPagarFormatado');
}
