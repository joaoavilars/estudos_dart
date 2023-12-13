import 'dart:io';

main() {
  var isRunning = true;
  while (isRunning) {
    String? valueString = stdin.readLineSync();
    int value = int.parse(valueString!);
    if (value > 9) {
      isRunning = false;
    }
    print('Rodando! $value');
  }
}
