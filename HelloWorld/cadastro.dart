import 'dart:io';

main() {
  final String nome = pegaNome();
  final String endereco = pegaEndereco();
  final String cep = pegaCEP();
  final String idade = pegaIdade();
  final double peso = pegaPeso();
  final double altura = pegaAltura();
  double imc = calculaIMC(peso, altura);
  final String resultadoIMC = classificaIMC(imc);

  print('Nome: $nome');
  print('Endereço: $endereco');
  print('CEP: $cep');
  print('Idade: $idade');
  print('IMC: $resultadoIMC');
}

String pegaNome() {
  print('Prencha os dados de Cadastro:');
  print('Nome completo:');
  final String? nome = stdin.readLineSync();
  if (nome == null) {
    return 'Anônimo';
  } else {
    return nome;
  }
}

String pegaEndereco() {
  print('Endereço (Rua/numero/complemento):');
  final String? endereco = stdin.readLineSync();
  if (endereco == null) {
    return 'Endereço não informado';
  } else {
    return endereco;
  }
}

String pegaCEP() {
  print('CEP:');
  final String? cep = stdin.readLineSync();
  if (cep == null) {
    return 'CEP não informado.';
  } else {
    return cep;
  }
}

String pegaIdade() {
  print('Idade:');
  final String? idade = stdin.readLineSync();
  if (idade == null) {
    return 'Idade não informada';
  } else {
    return idade;
  }
}

double pegaPeso() {
  print('Peso (use ponto e não vírgula):');
  final String? pesoString = stdin.readLineSync();
  if (pesoString == null) {
    return 0.0;
  } else {
    return double.parse(pesoString);
  }
}

double pegaAltura() {
  print('Altura (use ponto e não vírgula):');
  final String? alturaString = stdin.readLineSync();
  if (alturaString == null) {
    return 0.0;
  } else {
    return double.parse(alturaString);
  }
}

double calculaIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String classificaIMC(double? imc) {
  if (imc == null) {
    return "IMC não informado";
  } else {
    print('IMC: $imc');
    if (imc < 18.5) {
      return 'Você está abaixo do peso!';
    } else if (imc <= 24.9) {
      return 'Você está com o peso ideal!';
    } else if (imc <= 34.9) {
      return 'Obesidade Grau I!';
    } else if (imc <= 39.9) {
      return 'Obesidade Grau II (severa)!';
    } else {
      return 'Obesidade Grau III (mórbida)!';
    }
  }
}
