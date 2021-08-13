import 'services.dart';

abstract class IProductRepository {
  ProductCreatorService get creator;
  ProductReaderService get reader;
  ProductUpdaterService get updater;
  ProductDeleterService get deleter;
}

class ProductRepository implements IProductRepository {
  @override
  ProductCreatorService get creator => ProductCreatorService();
  @override
  ProductReaderService get reader => ProductReaderService();
  @override
  ProductUpdaterService get updater => ProductUpdaterService();
  @override
  ProductDeleterService get deleter => ProductDeleterService();
}

class FakeProductRepository implements IProductRepository {
  @override
  ProductCreatorService get creator => FakeProductCreatorService();
  @override
  ProductReaderService get reader => FakeProductReaderService();
  @override
  ProductUpdaterService get updater => FakeProductUpdaterService();
  @override
  ProductDeleterService get deleter => FakeProductDeleterService();
}
