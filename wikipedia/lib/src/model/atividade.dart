class ProdutoCarro {
  final String nome;
  final double preco;
  final String descricao;
  final String marca;
  final String modelo;
  final String tipoVeiculo;
  final int ano;
  final bool disponivel;
  final bool freteGratis;
  final double avaliacao;
  final int quantidadeAvaliacoes;

  String? cor;
  String? tipoCombustivel;
  String? transmissao;
  int? quantidadePortas;
  String? imagemUrl;
  bool? emPromocao;
  double? percentualDesconto;
  int? estoque;

  ProdutoCarro({
    required this.nome,
    required this.preco,
    required this.descricao,
    required this.marca,
    required this.modelo,
    required this.tipoVeiculo,
    required this.ano,
    required this.disponivel,
    required this.freteGratis,
    required this.avaliacao,
    required this.quantidadeAvaliacoes,
    this.cor,
    this.tipoCombustivel,
    this.transmissao,
    this.quantidadePortas,
    this.imagemUrl,
    this.emPromocao,
    this.percentualDesconto,
    this.estoque,
  });
}