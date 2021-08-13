import 'package:cloud_firestore/cloud_firestore.dart';
//TODO: Estudar como remover esse import:
import 'package:nutri/src/features/user/features/product/src/models.dart';
import 'models.dart';


const String orderFirestoreCollection = 'order';

class OrderCreatorService {
  create(String userPath, OrderModel m) async {
    await FirebaseFirestore.instance
        .doc(userPath)
        .collection(orderFirestoreCollection)
        .add(m.toMap());

    //TODO: Para facilitar o link, vou salvar tanto no usuário quanto na top-level

    final response = await FirebaseFirestore.instance
        .collection(orderFirestoreCollection)
        .add(m.toMap());

    return response.id;
  }
}

class FakeOrderCreatorService extends OrderCreatorService {
  create(String userPath, OrderModel m) async {
    print('Order falsa enviada no path: $userPath');
    return 'idDaOrder';
  }
}

class OrderReaderService {
  Future<OrderModel> read(String id) async {
    final result = await FirebaseFirestore.instance
        .collection(orderFirestoreCollection)
        .doc(id)
        .get();
    result.data();
    return OrderModel.fromMap(result.data()!);
  }
}

class FakeOrderReaderService extends OrderReaderService {
  Future<OrderModel> read(String id) async {
    return OrderModel(data: [
      ProductCounterModel('order1', 32, 3),
      ProductCounterModel('order2', 12, 1),
      ProductCounterModel('order3', 22, 2),
    ]);
  }
}

class OrderUpdaterService {
  update(OrderModel m) {
    return;
  }
}

class FakeOrderUpdaterService extends OrderUpdaterService {
  update(OrderModel m) {
    return;
  }
}

class OrderDeleterService {
  delete(String id) {
    return;
  }
}

class FakeOrderDeleterService extends OrderDeleterService {
  delete(String id) {
    return;
  }
}
