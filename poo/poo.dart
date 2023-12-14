void main() {
  Carro carro = Carro();
  print(carro.qtdPortas);
  print(carro.nomeCompleto());
}

class Carro {
  int qtdPortas = 4;
  String nome = 'Ka';
  String marca = 'Ford';

  String nomeCompleto() {
    return '$marca $nome';
  }
}
