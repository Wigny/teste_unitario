import 'package:carrinho_de_compras/carrinho.dart';
import 'package:carrinho_de_compras/produto.dart';

import 'package:test/test.dart';

void main() {
  group('Carrinho', () {
    test('deve ter valor total zero', () {
      final Carrinho carrinho = Carrinho();
      expect(carrinho.total, 0);
    });

    test('deve ter valor total 40', () {
      final Carrinho carrinho = Carrinho(
        produtos: <Produto>[
          Produto(
            nome: 'Caneta',
            quantidade: 5,
            desconto: 0.2,
            preco: 10,
          ),
        ],
      );

      expect(carrinho.total, 40);
    });
  });
}
