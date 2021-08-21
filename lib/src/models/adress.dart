import 'dart:convert';

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
    required this.cidade,
    required this.estado,
    required this.pais,
  });

  Map<String, dynamic> toMap() {
    return {
      'bairro': bairro,
      'rua': rua,
      'numero': numero,
      'cidade': cidade,
      'estado': estado,
      'pais': pais,
    };
  }

  factory Adress.fromMap(Map<String, dynamic> map) {
    return Adress(
      bairro: map['bairro'],
      rua: map['rua'],
      numero: map['numero'],
      cidade: map['cidade'],
      estado: map['estado'],
      pais: map['pais'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Adress.fromJson(String source) => Adress.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Adress &&
      other.bairro == bairro &&
      other.rua == rua &&
      other.numero == numero &&
      other.cidade == cidade &&
      other.estado == estado &&
      other.pais == pais;
  }

  @override
  int get hashCode {
    return bairro.hashCode ^
      rua.hashCode ^
      numero.hashCode ^
      cidade.hashCode ^
      estado.hashCode ^
      pais.hashCode;
  }

  @override
  String toString() {
    return 'Adress(bairro: $bairro, rua: $rua, numero: $numero, cidade: $cidade, estado: $estado, pais: $pais)';
  }
}
