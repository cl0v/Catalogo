import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/src/providers.dart';

class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({Key? key}) : super(key: key);

  onPressed(BuildContext context) {
    final provider = UserProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              topRight: Radius.circular(15.0)),
        ),
       color: Colors.green[600],
      onPressed: () => onPressed(context),
      child: Container(child: Icon(Icons.add, color: Colors.white,), ),
      
    );
  }
}
