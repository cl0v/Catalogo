import 'dart:convert';

import 'package:nutri/src/features/user/features/order/models/order_model.dart';

class OrderReaderModel {
  double value;
  List<OrderModel> orders;
  OrderReaderModel({
    required this.value,
    required this.orders,
  });

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'orders': orders.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderReaderModel.fromMap(Map<String, dynamic> map) {
    return OrderReaderModel(
      value: map['value'],
      orders: List<OrderModel>.from(map['orders']?.map((x) => OrderModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderReaderModel.fromJson(String source) => OrderReaderModel.fromMap(json.decode(source));

  @override
  String toString() => 'OrderReaderModel(value: $value, orders: $orders)';
}
