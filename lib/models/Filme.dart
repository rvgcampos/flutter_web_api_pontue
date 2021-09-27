class Filme {
  final String? nome;
  final String? sinopse;
  final String? data_lancamento;
  final String? nota;
  final String? maior_18;

  Filme({
    required this.nome,
    required this.sinopse,
    required this.data_lancamento,
    required this.nota,
    required this.maior_18,
  });

  Filme.fromJson(Map<String, dynamic> json)
      : this.nome = json['nome'],
        this.sinopse = json['sinopse'],
        this.data_lancamento = json['data_lancamento'],
        this.nota = json['nota'],
        this.maior_18 = json['maior_18'];
}
