import 'package:flutter/material.dart';

import 'package:nutri/models/product_model.dart';

class ItemAmountSelectorWidget extends StatelessWidget {
  ItemAmountSelectorWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductModel product;

  final ValueNotifier<int> amount = ValueNotifier<int>(0);

  remove() {
    if (amount.value <= 0) return;
    amount.value -= 1;
  }

  add() {
    amount.value += 1;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: amount,
        builder: (BuildContext c, int value, Widget? w) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(value.toString()),
              Expanded(
                child: Text('${product.title} (R\$${product.value})'),
                flex: 3,
              ),
              ButtonBar(
                children: [
                  IconButton(onPressed: remove, icon: Icon(Icons.remove)),
                  Text('R\$' + (product.value * value).toStringAsFixed(2)),
                  IconButton(onPressed: add, icon: Icon(Icons.add)),
                ],
              )
            ],
          );
        });
  }
}
