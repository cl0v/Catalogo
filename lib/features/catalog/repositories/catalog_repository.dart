import 'package:nutri/features/catalog/interfaces/catalog_interface.dart';
import 'package:nutri/models/product_model.dart';

class CatalogRepository implements ICatalog {
  @override
  Future<List<ProductModel>> get(String uid) async {
    return [
      ProductModel(title: 'Naara chocolate', value: 149.9),
      ProductModel(title: 'Naara manga', value: 39.9),
      ProductModel(title: 'Naara vanilla', value: 22.9),
      ProductModel(title: 'Naara chocolate', value: 149.9),
      ProductModel(title: 'Naara chocolate', value: 149.9),
      ProductModel(title: 'Naara chocolate', value: 149.9),
    ];
  }
}
