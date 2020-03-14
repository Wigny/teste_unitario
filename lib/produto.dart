class Produto {
  double preco;
  String nome;
  int quantidade;

  Produto({
    this.nome = '',
    this.preco = 0,
    this.quantidade = 1,
  });

  double get total => quantidade * preco;
}
