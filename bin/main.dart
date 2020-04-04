import 'dart:io';

import 'package:carrinho_de_compras/carrinho.dart';
import 'package:carrinho_de_compras/cliente.dart';
import 'package:carrinho_de_compras/produto.dart';

void main() {
  final Carrinho carrinho = Carrinho(
    cliente: cliente,
    produtos: produtos,
  );

  writeLine(
    '\nCarrinho do ${carrinho.cliente.nome} tem valor total de R\$${carrinho.total.toStringAsFixed(2)}',
  );

  if (readLine('Imprimir comprovante? (S/n) ') != 'n') {
    writeComprovante(carrinho);
  }
}

Cliente get cliente {
  final Cliente cliente = Cliente();
  cliente.nome = readLine('Nome do cliente: ');

  if (readLine('CPF na nota? (S/n) ') != 'n') {
    cliente.cpf = readLine('CPF do cliente: ');
  }
  return cliente;
}

List<Produto> get produtos {
  final List<Produto> produtos = <Produto>[];

  do {
    produtos.add(produto);
  } while (readLine('Adicionar outro produto? (S/n) ') != 'n');

  return produtos;
}

Produto get produto {
  final Produto produto = Produto();

  produto.nome = readLine(
    '\nProduto: ',
  );
  produto.preco = double.tryParse(
        readLine('Preço: '),
      ) ??
      0;
  produto.quantidade = int.tryParse(
        readLine('Quantidade: '),
      ) ??
      1;

  return produto;
}

String readLine(String description) {
  stdout.write(description);
  return stdin.readLineSync();
}

void writeLine(String description) {
  stdout.writeln(description);
}

Future<void> writeComprovante(Carrinho carrinho) async {
  final IOSink comprovante = File('comprovantes.txt').openWrite(
    mode: FileMode.append,
  );

  comprovante.writeln('-------- CLIENTE --------');
  comprovante.writeln('NOME: ${carrinho.cliente.nome}');
  if (carrinho.cliente.cpf != null) {
    comprovante.writeln('CPF: ${carrinho.cliente.cpf}');
  }

  comprovante.writeln('-------- PRODUTOS -------');
  for (final Produto p in carrinho.produtos) {
    comprovante.writeln(
      '${p.quantidade} ${p.nome}: R\$${p.total.toStringAsFixed(2)}',
    );
  }

  comprovante.writeln('--------- TOTAL ---------');
  comprovante.writeln('TOTAL: R\$${carrinho.total.toStringAsFixed(2)}');
  comprovante.writeln('-------------------------\n');

  await comprovante.close();
}
