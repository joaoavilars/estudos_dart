void main() {
  final pessoa = Pessoa(
    name: 'João',
    altura: 1.82,
    peso: 113.5,
  );

  print(pessoa.calcularImc());
}

class Pessoa {
  final String name;
  final double altura;
  final double peso;

  Pessoa({required this.name, required this.altura, required this.peso});

  double calcularImc() {
    return peso / (altura * altura);
  }
}
