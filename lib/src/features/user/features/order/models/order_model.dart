import 'dart:convert';

class OrderModel {
  // Dia?

  /// Valor total do pedido;

  // Lista dos valores Nome do produto x quantidade (Ou produto e quantidade)
  String title;
  int amount;

  OrderModel({
    required this.title,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'amount': amount,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      title: map['title'],
      amount: map['amount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderModel &&
        other.title == title &&
        other.amount == amount;
  }

  @override
  int get hashCode => title.hashCode ^ amount.hashCode;

  @override
  String toString() => 'OrderModel(title: $title, amount: $amount)';
}


/*
[
  OrderModel:OrderModel(title: Product 1, amount: 2.0),
  OrderModel:OrderModel(title: Product 2, amount: 1.0),
  OrderModel:OrderModel(title: Product 3, amount: 1.0)
]
[
  OrderModel:OrderModel(title: Produto 1, amount: 2.0),
  OrderModel:OrderModel(title: Produto 2, amount: 1.0),
  OrderModel:OrderModel(title: Produto 3, amount: 1.0)
]
*/