import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri/src/constants/firebase.dart';
import 'package:nutri/src/features/user/features/product/models/product_model.dart';

class ProductReaderService {
  Stream<List<ProductModel>> readAll(String storeId) {
    return FirebaseFirestore.instance
        .collection(userCollection)
        .doc(storeId)
        .collection(productsCollection)
        .snapshots()
        .map((query) =>
            query.docs.map((doc) => ProductModel.fromMap(doc.data())).toList());
  }
}

class FakeProductReaderService extends ProductReaderService {
  Stream<List<ProductModel>> readAll(String storeId) {
    return Stream.value([
      ProductModel('Product',  32,),
      ProductModel('Product2',  42,),
      ProductModel('Product3',  52,),
      ProductModel('Product4',  62,),
    ]);
  }
}
