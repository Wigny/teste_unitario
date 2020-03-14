import 'package:carrinho_de_compras/produto.dart';

class Carrinho {
  final List<Produto> produtos;

  Carrinho({
    this.produtos,
  });

  double get total {
    return produtos.fold(
        0, (previousValue, element) => previousValue + element.total);
  }
}
