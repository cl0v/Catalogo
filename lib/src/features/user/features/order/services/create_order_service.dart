import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/src/constants/firebase.dart';
import 'package:nutri/src/features/user/features/order/models/order_reader_model.dart';

class OrderCreatorService {
  Future<String> create(String userId, OrderReaderModel order) async {
    //TODO: Inventar um codigo melhorzin no bloc pra enviar os dados do Map direto

    // final Map<String, dynamic> data = {
    //   "value": bloc.totalValue,
    //   "data": bloc.orders.map((e) => e.toMap()).toList()
    // };

    await FirebaseFirestore.instance
        .collection(userCollection)
        .doc(userId)
        .collection(orderCollection)
        .add(order.toMap());

    //TODO: Para facilitar o link, vou salvar tanto no usuário quanto na top-level

    final response = await FirebaseFirestore.instance
        .collection(orderCollection)
        .add(order.toMap());

    return response.id;
  }
}

class FakeOrderCreatorService extends OrderCreatorService {
  Future<String> create(String userId, OrderReaderModel order) async {
    print('Order falsa enviada no id: $userId');
    return 'idDaOrder';
  }
}
