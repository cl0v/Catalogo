
import 'services.dart';

abstract class IOrderRepository {
    OrderCreatorService get creator;
    OrderReaderService get reader;
    OrderUpdaterService get updater;
    OrderDeleterService get deleter;
}


class OrderRepository implements IOrderRepository {
    @override
    OrderCreatorService get creator => OrderCreatorService();
    @override
    OrderReaderService get reader => OrderReaderService();
    @override
    OrderUpdaterService get updater => OrderUpdaterService();
    @override
    OrderDeleterService get deleter => OrderDeleterService();
}


class FakeOrderRepository implements IOrderRepository {
    @override
    OrderCreatorService get creator => FakeOrderCreatorService();
    @override
    OrderReaderService get reader => FakeOrderReaderService();
    @override
    OrderUpdaterService get updater => FakeOrderUpdaterService();
    @override
    OrderDeleterService get deleter => FakeOrderDeleterService();
}


