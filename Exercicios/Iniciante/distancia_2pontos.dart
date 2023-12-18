import 'dart:io';
import 'dart:math';

/*
Exemplos de entrada:

1.0 7.0
5.0 9.0


-2.5 0.4
12.1 7.3

*/

void main() {
  List<String> strX = stdin.readLineSync()!.split(" ");
  List<String> strY = stdin.readLineSync()!.split(" ");
  double x1 = double.parse(strX[0]);
  double y1 = double.parse(strX[1]);
  double x2 = double.parse(strY[0]);
  double y2 = double.parse(strY[1]);

  double distancia = sqrt((pow(x2 - x1, 2)) + (pow(y2 - y1, 2)));
  String? formatDist = distancia.toStringAsFixed(4);

  print(formatDist);
}
