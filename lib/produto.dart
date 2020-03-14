class Produto {
  final double preco;
  final String nome;
  final int quantidade;

  Produto({
    this.preco,
    this.nome,
    this.quantidade,
  });

  double get total => quantidade * preco;
}
