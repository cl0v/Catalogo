// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:nutri/src/constants/firebase.dart';
// import 'package:nutri/src/models/product_model.dart';

// abstract class IProductRepository {
//   Future<List<ProductModel>> get();
//   Future<void> add(ProductModel product);
// }

// class ProductRepository implements IProductRepository {
//   final String _storeId;

//   ProductRepository(this._storeId);

//   Future<List<ProductModel>> get() async {
//     print('Producurando produtos...');

//     final r = await FirebaseFirestore.instance
//         .collection(storeCollection)
//         .doc(_storeId)
//         .collection(productsCollection)
//         .get();
//     return r.docs.map((e) => ProductModel.fromMap(e.data())).toList();
//   }

//   @override
//   Future<void> add(ProductModel product) async {
//     print('Adicionando produto...');

//     await FirebaseFirestore.instance
//         .collection(storeCollection)
//         .doc(_storeId)
//         .collection(productsCollection)
//         .add(product.toMap());
//   }
// }
