import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/src/constants/firebase.dart';
import 'package:nutri/src/features/user/features/order/models/order_model.dart';
import 'package:nutri/src/features/user/features/order/models/order_reader_model.dart';

class OrderReaderService {
  Future<OrderReaderModel> read(String id) async {
    final result = await FirebaseFirestore.instance
        .collection(orderCollection)
        .doc(id)
        .get();
    result.data();
    return OrderReaderModel.fromMap(result.data()!);
  }
}

class FakeOrderReaderService extends OrderReaderService {
  Future<OrderReaderModel> read(String id) async =>
      OrderReaderModel(value: 300, orders: [
        OrderModel(title: 'Order1', amount: 2),
        OrderModel(title: 'Order2', amount: 1),
        OrderModel(title: 'Order3', amount: 5),
      ]);
}
