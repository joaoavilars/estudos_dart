import 'dart:io';

main() {
  final String name = pegarNome();

  double peso = pegarPeso();

  double altura = pegarAltura();

  print('\n\n');
  print('Nome: $name');

  double imc = calcularImc(peso, altura);
  print('IMC: $imc');

  if (imc > 25) {
    print('Gordo');
  } else if (imc < 18) {
    print('Magro');
  } else {
    print('Normal');
  }
}

String pegarNome() {
  print('Digite seu nome: ');
  final String? name = stdin.readLineSync();
  if (name == null) {
    return 'Anônimo';
  } else {
    return name;
  }
}

double pegarPeso() {
  print('Digite seu peso: ');
  final String? pesoString = stdin.readLineSync();
  if (pesoString == null) {
    return 0.0;
  } else {
    return double.parse(pesoString);
  }
}

double pegarAltura() {
  print('Digite sua altura: ');
  final String? alturaString = stdin.readLineSync();
  if (alturaString == null) {
    return 0.0;
  } else {
    return double.parse(alturaString);
  }
}

double calcularImc(double peso, double altura) {
  return peso / (altura * altura);
}
