import 'dart:convert';

class ProductModel {
  /// Titulo do produto
  String title;

  //TODO: Implement availability

//TODO: Conferir se sempre vai ser double
  /// Preço do produto
  double price; 

  /// Breve descrição sobre o produto
  String? desc;

  ProductModel(
    this.title,
    this.price, [
    this.desc,
  ]);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'desc': desc,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      map['title'],
      map['price'],
      map['desc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.title == title &&
        other.price == price &&
        other.desc == desc;
  }

  @override
  int get hashCode => title.hashCode ^ price.hashCode ^ desc.hashCode;

  @override
  String toString() =>
      'ProductModel(title: $title, price: $price, desc: $desc)';
}

class ProductCounterModel extends ProductModel {
  int amount;

  ProductCounterModel(String title, double price, [this.amount = 0])
      : super(title, price);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'amount': amount,
    };
  }

  factory ProductCounterModel.fromMap(Map<String, dynamic> map) {
    return ProductCounterModel(
      map['title'],
      map['price'],
      map['amount'],
    );
  }
}
