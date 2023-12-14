import 'dart:io';

main() {
  // Adicionar um produto

  // Imprimir um produto

  // Sair do programa

  final products = [];
  var isRunning = true;

  while (isRunning) {
    // print abaixo limpa o terminal
    print("\x1B[2J\x1B[0;0H");
    print('### Lista de compras (${products.length}) - [add - imprimir] ###');
    print('### Digite sair para finalizar ###');
    var input = stdin.readLineSync();
    if (input == 'add') {
      print("\x1B[2J\x1B[0;0H");
      print('### Adicione um produto ###');
      var product = stdin.readLineSync();
      products.add(product);
    } else if (input == 'imprimir') {
      print("\x1B[2J\x1B[0;0H");
      print('### Produtos cadastrados ###');
      print('____________________________');
      for (var i = 0; i < products.length; i++) {
        print(products[i]);
      }
      stdin.readLineSync();
    } else {
      isRunning = false;
    }
  }
  print("\x1B[2J\x1B[0;0H");
  print('### fim do programa ###');
}
