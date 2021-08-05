import 'package:flutter/material.dart';

class OrderSenderButtonWidget extends StatelessWidget {
  const OrderSenderButtonWidget({Key? key}) : super(key: key);

  onSubmit() {
    /*

    final r = await orderRepository.order(productOrderList, finalValue);
    WhatsAppLauncherService().launch(r);
    */
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text('Entrar em contato'),
      icon: Icon(Icons.send),
      onPressed: onSubmit,
    );
  }
}
