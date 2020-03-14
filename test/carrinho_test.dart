import 'package:carrinho_de_compras/carrinho.dart';
import 'package:test/test.dart';

void main() {
  group('Testar carrinho', () {
    test('Testar carrinho vazio', () {
      var carrinho = Carrinho();
      expect(carrinho.total, 0);
    });
  });
}
