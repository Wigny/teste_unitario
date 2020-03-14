import 'package:carrinho_de_compras/carrinho.dart';
import 'package:carrinho_de_compras/produto.dart';

void main() {
  var carrinho = Carrinho(
    produtos: <Produto>[
      Produto(
        nome: 'batata',
        quantidade: 2,
        preco: 10,
      ),
      Produto(
        nome: 'bolo',
        quantidade: 25,
        preco: 5.30,
      ),
    ],
  );

  print(carrinho.total);
  print(Carrinho().total);
}
