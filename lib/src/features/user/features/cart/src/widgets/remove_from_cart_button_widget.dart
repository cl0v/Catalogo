import 'package:flutter/material.dart';

class RemoveFromCartButtonWidget extends StatelessWidget {
  const RemoveFromCartButtonWidget({Key? key}) : super(key: key);
  
  onPressed(context) {}
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(context),
      icon: Icon(Icons.remove),
    );
  }
}
