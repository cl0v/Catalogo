import 'package:flutter/material.dart';

class ConfirmationButton extends StatelessWidget {
  final VoidCallback? onSubmit;

  const ConfirmationButton({Key? key, this.onSubmit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text('Entrar em contato'),
      icon: Icon(Icons.send),
      onPressed: onSubmit,
    );
  }
}
