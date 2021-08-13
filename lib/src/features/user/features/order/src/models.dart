
import 'package:nutri/src/features/user/features/product/export.dart';

class OrderModel {
  List<ProductCounterModel> data;

  OrderModel({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      data: List<ProductCounterModel>.from(
          map['data']?.map((x) => ProductCounterModel.fromMap(x))),
    );
  }
}