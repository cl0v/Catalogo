import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/constants/firebase.dart';
import 'package:nutri/models/order_model.dart';
import 'package:nutri/models/product_order_model.dart';

class OrderRepository {
  final firestore = FirebaseFirestore.instance;

  Future<String> order(List<ProductOrder> list, double value) async {
    Order order = Order(data: list, value: value, createdAt: Timestamp.now());
    final r = await firestore.collection(orderCollection).add(order.toMap());
    return r.id;
  }

  Future<Order> fromId(String id) {
    print(id);
    return firestore
        .collection(orderCollection)
        .doc(id)
        .get()
        .then((value) => Order.fromMap(value.data()!));
  }
}
