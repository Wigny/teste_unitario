import 'package:carrinho_de_compras/produto.dart';

class Carrinho {
  List<Produto> produtos;

  Carrinho({
    this.produtos = const [],
  });

  double get total => produtos.fold(
        0, (previousValue, element) => previousValue + element.total
        );
}
