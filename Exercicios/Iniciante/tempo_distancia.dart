import 'dart:io';

main() {
  String? strDistancia = stdin.readLineSync();
  int distancia = int.parse(strDistancia!);
  int velX = 60;
  int velY = 30;

  double tempoh = distancia / (velX - velY);
  double tempo = tempoh * 60;
  String formTempo = tempo.toStringAsFixed(0);

  print('$formTempo minutos');
}
