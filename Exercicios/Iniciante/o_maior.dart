import 'dart:io';
//import 'dart:math';

/*
Adaptado por Neilor Tonin, URI  Brasil

Timelimit: 1
Faça um programa que leia três valores e apresente o maior dos três valores 
lidos seguido da mensagem “eh o maior”. Utilize a fórmula:

MaiorAB = (a+b+abs(a-b))/2


Obs.: a fórmula apenas calcula o maior entre os dois primeiros (a e b). 
Um segundo passo, portanto é necessário para chegar no resultado esperado.

Entrada
O arquivo de entrada contém três valores inteiros.

Saída
Imprima o maior dos três valores seguido por um espaço e a mensagem "eh o maior".

Exemplos de Entrada	Exemplos de Saída
7 14 106

106 eh o maior

217 14 6

217 eh o maior
*/

void main() {
  List<String> numeros = stdin.readLineSync()!.split(' ');
  int a = int.parse(numeros[0]);
  int b = int.parse(numeros[1]);
  int c = int.parse(numeros[2]);

  double maiorAB = (a + b + (a - b).abs()) / 2;
  double maiorABC = (maiorAB + c + (maiorAB - c).abs()) / 2;
  String formMaiorABC = maiorABC.toStringAsFixed(0);

  print('$formMaiorABC eh o maior');
}
