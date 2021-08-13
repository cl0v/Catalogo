import 'package:nutri/src/features/user/features/product/services/read_product_service.dart';

import '../services/create_product_service.dart';

abstract class IProductRepository {
  ProductCreatorService get creator;
  ProductReaderService get reader;
}

class ProductRepository implements IProductRepository {
  @override
  ProductCreatorService get creator => ProductCreatorService();

  @override
  ProductReaderService get reader => ProductReaderService();
}

class FakeProductRepository implements IProductRepository {
  @override
  ProductCreatorService get creator => FakeProductCreatorService();

  @override
  ProductReaderService get reader => FakeProductReaderService();
}
