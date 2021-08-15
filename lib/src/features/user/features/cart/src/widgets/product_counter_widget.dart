import 'package:flutter/material.dart';

class ProductCounterWidget extends StatelessWidget {
  const ProductCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "  x ${0}", //TODO: Implement amount count
      style: Theme.of(context)
          .textTheme
          .subtitle1!
          .copyWith(fontWeight: FontWeight.bold),
    );
  }
}
