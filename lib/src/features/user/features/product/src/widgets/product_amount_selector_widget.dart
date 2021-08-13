import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/cart/export.dart';
import '../models.dart';

class ProductAmountSelectorWidget extends StatelessWidget {
  const ProductAmountSelectorWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('R\$${product.price}'),
        Spacer(),
        Expanded(
          child: Text('${product.title}'),
          flex: 3,
        ),
        ButtonBar(
          children: [
            RemoveFromCartButtonWidget(),
            ProductCounterWidget(),
            AddToCartButtonWidget(),
          ],
        )
      ],
    );
  }
}
