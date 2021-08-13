import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/src/constants/firebase.dart';
import '../models/product_model.dart';

class ProductCreatorService {
  Future<void> create(String userId, ProductModel product) {
    return FirebaseFirestore.instance
        .collection(userCollection)
        .doc(userId)
        .collection(productsCollection)
        .add(product.toMap());
  }
}

class FakeProductCreatorService extends ProductCreatorService {
  create(String userId, ProductModel product) async{
    return;
  }
}
