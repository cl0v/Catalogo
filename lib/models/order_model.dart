
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/models/product_order_model.dart';

class Order {
  List<ProductOrder> data;
  double value;
  Timestamp createdAt;
  Order({
    required this.data,
    required this.value,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
      'value': value,
      'createdAt': createdAt,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      data: List<ProductOrder>.from(map['data']?.map((x) => ProductOrder.fromMap(x))),
      value: map['value'],
      createdAt: map['createdAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));
}
