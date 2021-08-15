import 'package:flutter/material.dart';

class RemoveFromCartButtonWidget extends StatelessWidget {
  const RemoveFromCartButtonWidget({Key? key}) : super(key: key);

  onPressed(context) {}

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.red[300],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              topLeft: Radius.circular(15.0)),
        ),
      onPressed: () => onPressed(context),
      child: Container(child: Icon(Icons.remove, color: Colors.white,)),
    );
  }
}
