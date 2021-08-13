
// import 'dart:convert';

// import 'package:nutri/src/models/product_model.dart';

// class OrderModel {
//   ProductModel product;
//   int amount;
//   OrderModel({
//     required this.product,
//     required this.amount,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'product': product.toMap(),
//       'amount': amount,
//     };
//   }

//   factory OrderModel.fromMap(Map<String, dynamic> map) {
//     return OrderModel(
//       product: ProductModel.fromMap(map['product']),
//       amount: map['amount'],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source));
// }
