import 'package:carrinho_de_compras/carrinho.dart';
import 'package:carrinho_de_compras/cliente.dart';
import 'package:carrinho_de_compras/produto.dart';

void main() {
  final Carrinho carrinho = Carrinho(
    cliente: Cliente(
      nome: 'Wígny',
      cpf: '045.434.132-61',
    ),
    produtos: <Produto>[
      Produto(
        nome: 'Caneta',
        quantidade: 5,
        desconto: 0.2,
        preco: 10,
      ),
      Produto(
        nome: 'Borracha',
        quantidade: 10,
        preco: 5,
        desconto: 0.5,
      ),
    ],
  );

  print(
      'Carrinho do ${carrinho.cliente.nome} tem valor total de R\$${carrinho.total}');
}
