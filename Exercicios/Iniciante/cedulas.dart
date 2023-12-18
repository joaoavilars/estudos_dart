import 'dart:io';

/*
Leia um valor inteiro. A seguir, calcule o menor número de notas possíveis 
(cédulas) no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2 e 1. 
A seguir mostre o valor lido e a relação de notas necessárias.

Entrada
O arquivo de entrada contém um valor inteiro N (0 < N < 1000000).

Saída
Imprima o valor lido e, em seguida, a quantidade mínima de notas de cada 
tipo necessárias, conforme o exemplo fornecido.


Exemplo de entrada:
576

Exemplo de saida
	
576
5 nota(s) de R$ 100,00
1 nota(s) de R$ 50,00
1 nota(s) de R$ 20,00
0 nota(s) de R$ 10,00
1 nota(s) de R$ 5,00
0 nota(s) de R$ 2,00
1 nota(s) de R$ 1,00

  */

void main() {
  String? strValor = stdin.readLineSync();
  int valor = int.parse(strValor!);

  print(valor);

  valor = imprimirEObterResto(valor, 100, 'R\$ 100,00');
  valor = imprimirEObterResto(valor, 50, 'R\$ 50,00');
  valor = imprimirEObterResto(valor, 20, 'R\$ 20,00');
  valor = imprimirEObterResto(valor, 10, 'R\$ 10,00');
  valor = imprimirEObterResto(valor, 5, 'R\$ 5,00');
  valor = imprimirEObterResto(valor, 2, 'R\$ 2,00');
  valor = imprimirEObterResto(valor, 1, 'R\$ 1,00');
}

int imprimirEObterResto(int valor, int nota, String mensagem) {
  int quantidade = valor ~/ nota;
  valor %= nota;
  print('$quantidade nota(s) de $mensagem');
  return valor;
}
