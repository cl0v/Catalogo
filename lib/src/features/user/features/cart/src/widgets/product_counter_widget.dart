import 'package:flutter/material.dart';

class ProductCounterWidget extends StatelessWidget {
  const ProductCounterWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('0');
    // return Text('(${value.toString()}) x R\$' +
    //             (widget.product.price * value).toStringAsFixed(2)),
    //         ;
  }
}