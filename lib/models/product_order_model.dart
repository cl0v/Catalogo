
import 'dart:convert';

class ProductOrder {
  final String title;
  final int amout;
  final double total;

  ProductOrder(this.title, this.amout, this.total);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'amout': amout,
      'total': total,
    };
  }

  factory ProductOrder.fromMap(Map<String, dynamic> map) {
    return ProductOrder(
      map['title'],
      map['amout'],
      map['total'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductOrder.fromJson(String source) => ProductOrder.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductOrder &&
      other.title == title &&
      other.amout == amout &&
      other.total == total;
  }

  @override
  int get hashCode => title.hashCode ^ amout.hashCode ^ total.hashCode;

  @override
  String toString() => 'ProductOrder(title: $title, amout: $amout, total: $total)';
}
