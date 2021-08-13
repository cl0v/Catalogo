import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/cart/src/controller.dart';
import 'package:nutri/src/features/user/models/user_model.dart';
import 'package:nutri/src/features/user/providers/user_provider.dart';
import 'package:nutri/src/services/whatsapp_launcher.dart';

import '../repository.dart';

class OrderCreatorButtonWidget extends StatelessWidget {
  final WhatsappMessageLauncherService launcher;

  const OrderCreatorButtonWidget({Key? key, required this.launcher})
      : super(key: key);

  onPressed(context) async {
    final UserProvider provider = UserProvider.of(context);
    UserModel user = await provider.userRepository.reader.read(provider.uid);

    final IOrderRepository repository = provider.orderRepository!;
    CartController controller = provider.cartController;
    // Recebo a orderModel e envio para criar, apenas... Essar orderModel deve vir do cart

    final orderId =
        await repository.creator.create(user.documentPath!, controller.order);

    launcher.launchOrder(user.phone, orderId);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: Icon(Icons.send),
      label: Text('Finalizar pedido'),
      onPressed: () => onPressed(context),
    );
  }
}
