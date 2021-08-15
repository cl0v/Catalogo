import 'package:flutter/material.dart';
import 'package:nutri/src/constants.dart';
import 'package:nutri/src/features/user/features/cart/src/controller.dart';
import 'package:nutri/src/features/user/src/models.dart';
import 'package:nutri/src/features/user/src/providers.dart';

import '../repository.dart';

class OrderCreatorButtonWidget extends StatelessWidget {

  onPressed(context) async {
    final UserProvider provider = UserProvider.of(context);
    UserModel user = await provider.userRepository.reader.read(provider.uid);

    final IOrderRepository repository = provider.orderRepository!;
    CartController controller = provider.cartController;
    // Recebo a orderModel e envio para criar, apenas... Essar orderModel deve vir do cart

    final orderId =
        await repository.creator.create(user.documentPath!, controller.order);

  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: Icon(Icons.send),
      backgroundColor: primaryColor,
      label: Text('Finalizar pedido'),
      onPressed: () => onPressed(context),
    );
  }
}
