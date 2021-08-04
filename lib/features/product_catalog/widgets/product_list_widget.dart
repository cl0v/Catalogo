import 'package:flutter/material.dart';
import 'package:nutri/pages/catalog_page.dart';

import 'item_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
          children: productList
              .map((p) => ItemWidget(
                    onAmountChanged: onProductAmountChanged,
                     //Aqui é a situacao onde será necessario o provider
                    product: p,
                  ))
              .toList(),
        );
  }
}