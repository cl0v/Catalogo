import 'package:flutter/material.dart';
import 'package:nutri/src/constants.dart';
import 'package:nutri/src/features/user/features/cart/export.dart';
import '../models.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: defaultPadding / 2,
        horizontal: defaultPadding / 3,
      ),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.redAccent,
        child: Text(
          product.title.substring(0, 1),
          style: TextStyle().copyWith(
            color: Colors.white,
          ),
        ),
      ),
      subtitle: Text('Naara bom pra pele.'),
      title: Text(
        product.title,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: Column(
        children: [
          FittedBox(
            child: Row(
              children: [
                _Price(price: product.price),
                ProductCounterWidget(),
              ],
            ),
          ),
          Container(
            width: 120,
            child: Row(
              children: [
                Expanded(flex: 1, child: RemoveFromCartButtonWidget()),
                Expanded(flex: 2, child: AddToCartButtonWidget()),
              ],
            ),
          ),
        ],
      ),
    );
    
  }
}

class _Price extends StatelessWidget {
  const _Price({
    Key? key,
    required this.price,
  }) : super(key: key);
  final double price;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "R\$",
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.w600, color: primaryColor),
        children: [
          TextSpan(
            text: price.toStringAsFixed(2), //TODO: Substituir ponto pla virgula
            style: TextStyle(color: Colors.black),
          ),
          // TextSpan(
          //   text: "/kg",
          //   style:
          //       TextStyle(color: Colors.black26, fontWeight: FontWeight.normal),
          // )
        ],
      ),
    );
  }
}
