import 'package:carrinho_de_compras/produto.dart';
import 'package:test/test.dart';

void main() {
  group('Produto', () {
    test('deve ter valor 40', () {
      final Produto produto = Produto(
        nome: 'Caneta',
        quantidade: 5,
        desconto: 0.2,
        preco: 10,
      );
      expect(produto.total, 40);
    });

    test('deve ter valor 2', () {
      final Produto produto = Produto(
        nome: 'Borracha',
        preco: 2,
      );
      expect(produto.total, 2);
    });
  });
}
