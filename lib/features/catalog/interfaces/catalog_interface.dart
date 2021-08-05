import 'package:nutri/models/product_model.dart';

abstract class ICatalog {
  Future<List<ProductModel>> get(String uid);

}
