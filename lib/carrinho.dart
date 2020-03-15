import 'package:carrinho_de_compras/cliente.dart';
import 'package:carrinho_de_compras/produto.dart';

class Carrinho {
  Carrinho({
    this.cliente,
    this.produtos = const <Produto>[],
  });

  Cliente cliente;
  List<Produto> produtos;

  double get total => produtos
      .map((Produto e) => e.total)
      .fold(0, (double value, double total) => value + total);
}
