import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/providers/user_provider.dart';

class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({Key? key}) : super(key: key);

  onPressed(BuildContext context) {
    final provider = UserProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(context),
      icon: Icon(Icons.add),
    );
  }
}
