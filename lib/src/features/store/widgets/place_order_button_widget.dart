import 'package:flutter/material.dart';

class PlaceOrderButtonWidget extends StatefulWidget {
  const PlaceOrderButtonWidget({Key? key}) : super(key: key);

  @override
  _PlaceOrderButtonWidgetState createState() => _PlaceOrderButtonWidgetState();
}

class _PlaceOrderButtonWidgetState extends State<PlaceOrderButtonWidget> {

  onSubmit() {
    print('Enviando... todo');
    
    //TODO:
    //TODO: Implement OrderSenderButtonWidget;
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
