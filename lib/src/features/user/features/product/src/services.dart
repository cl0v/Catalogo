import 'package:cloud_firestore/cloud_firestore.dart';
import 'models.dart';

const String productFirestoreCollection = 'product';

class ProductCreatorService {
  create(String userPath, ProductModel m) {
    return FirebaseFirestore.instance
        .doc(userPath)
        .collection(productFirestoreCollection)
        .add(m.toMap());
  }
}

class FakeProductCreatorService extends ProductCreatorService {
  create(String userPath, ProductModel m) {
    print('Adicionando produto');
    return;
  }
}

class ProductReaderService {
  //TODO: Substituir para readAllFromStore
  Future<List<ProductModel>> read(String userPath) async {
    final result = await FirebaseFirestore.instance
        .doc(userPath)
        .collection(productFirestoreCollection)
        .get();
    return result.docs.map((e) => ProductModel.fromMap(e.data())).toList();
  }
}

class FakeProductReaderService extends ProductReaderService {
  Future<List<ProductModel>> read(String userPath) async {
    return [
      ProductModel(
        'Product',
        32,
      ),
      ProductModel(
        'Product2',
        42,
      ),
      ProductModel(
        'Product3',
        52,
      ),
      ProductModel(
        'Product4',
        62,
      ),
    ];
  }
}

class ProductUpdaterService {
  update(ProductModel m) {
    return;
  }
}

class FakeProductUpdaterService extends ProductUpdaterService {
  update(ProductModel m) {
    return;
  }
}

class ProductDeleterService {
  delete(String id) {
    return;
  }
}

class FakeProductDeleterService extends ProductDeleterService {
  delete(String id) {
    return;
  }
}
