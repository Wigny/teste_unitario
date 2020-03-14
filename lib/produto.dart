class Produto {
  double preco;
  String nome;
  int quantidade;

  Produto({
    @required this.nome,
    this.preco = 0,
    this.quantidade = 1,
  });

  double get total => quantidade * preco;
}
