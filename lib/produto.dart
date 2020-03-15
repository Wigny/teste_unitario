class Produto {
  Produto({
    this.nome = '',
    this.quantidade = 1,
    this.preco = 0,
    this.desconto = 0,
  });

  String nome;
  int quantidade;
  double preco;
  double desconto;

  double get total => quantidade * ((1 - desconto) * preco);
}
