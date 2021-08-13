import 'package:nutri/src/features/user/features/order/services/whatsapp_message_launcher_service.dart';

import '../services/create_order_service.dart';
import '../services/read_order_service.dart';

abstract class IOrderRepository {
  OrderCreatorService get creator;
  OrderReaderService get reader;
  WhatsappMessageLauncherService get launcher;
}

class OrderRepository implements IOrderRepository {
  @override
  OrderCreatorService get creator => OrderCreatorService();

  @override
  OrderReaderService get reader => OrderReaderService();

  @override
  WhatsappMessageLauncherService get launcher => WhatsappMessageLauncherService();
}

class FakeOrderRepository implements IOrderRepository {
  @override
  OrderCreatorService get creator => FakeOrderCreatorService();

  @override
  OrderReaderService get reader => FakeOrderReaderService();

  @override
  WhatsappMessageLauncherService get launcher => WhatsappMessageLauncherService();
}
