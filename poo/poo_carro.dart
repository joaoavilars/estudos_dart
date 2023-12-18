void main() {
  final uno = Carro(qtdPortas: 4, nome: 'Uno', marca: 'Fiat');
  print(uno.qtdPortas);
  print(uno.nomeCompleto());

  final gol = Carro(qtdPortas: 2, nome: 'Gol', marca: 'Volkswagen');
  print(gol.qtdPortas);
  print(gol.nomeCompleto());
}

class Carro {
  late int qtdPortas;
  late String nome;
  late String marca;

  Carro({
    required int qtdPortas,
    required String nome,
    required String marca,
  }) {
    this.qtdPortas = qtdPortas;
    this.nome = nome;
    this.marca = marca;
  }

  String nomeCompleto() {
    return '$marca $nome';
  }
}
