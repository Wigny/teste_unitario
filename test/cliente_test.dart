import 'package:carrinho_de_compras/cliente.dart';

import 'package:test/test.dart';

void main() {
  group('Cliente', () {
    test("deve ter nome igual 'Wígny'", () {
      final Cliente cliente = Cliente(
        nome: 'Wígny',
        cpf: '045.434.132-61',
      );
      expect(cliente.nome, 'Wígny');
    });
  });
}
