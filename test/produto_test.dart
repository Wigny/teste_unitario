import 'package:carrinho_de_compras/produto.dart';
import 'package:test/test.dart';

void main() {
  test('Testar total do produto', () {
    var produto = Produto(
      nome: 'banana',
      quantidade: 2,
      preco: 10,
    );
    expect(produto.total, 20);
  });
}
