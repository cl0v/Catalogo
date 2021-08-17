class Adress {
  String bairro;
  String rua;
  String numero;
  String? cidade;
  String? estado;
  String? pais;
  Adress({
    required this.bairro,
    required this.rua,
    required this.numero,
    this.cidade = 'Joaíma',
    this.estado = 'MG',
    this.pais = 'BR',
  });
}
