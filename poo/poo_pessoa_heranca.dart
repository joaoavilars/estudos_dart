void main() {
  final pessoa = Pessoa(
    name: 'João',
    altura: 1.82,
    peso: 113.5,
  );

  final medico = Medico(crm: 3445, name: 'Andrea', altura: 1.68, peso: 64);

  print(pessoa.calcularImc());
  print(medico.calcularImc());
}

class Medico extends Pessoa {
  final int crm;

  Medico({
    required this.crm,
    required String name,
    required double altura,
    required double peso,
  }) : super(name: name, altura: altura, peso: peso);
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
