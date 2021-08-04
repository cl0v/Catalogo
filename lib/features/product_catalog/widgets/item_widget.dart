import 'package:flutter/material.dart';
import 'package:nutri/models/product_model.dart';

class ItemWidget extends StatefulWidget {
  final ProductModel product;
  final Function(ProductModel, int) onAmountChanged;

  const ItemWidget({
    Key? key,
    required this.onAmountChanged,
    required this.product,
  }) : super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  int amount = 0;



  remove() {
    if (amount <= 0) return;
    setState(() {
      amount--;
    });
    widget.onAmountChanged(widget.product, amount);
  }

  add() {
    setState(() {
      amount++;
    });
    widget.onAmountChanged(widget.product, amount);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text(
            '$amount x',
          ),
          flex: 1,
        ),
        Expanded(
          child: Text('${widget.product.title} (R\$${widget.product.value})'),
          flex: 3,
        ),
        // TODO: Limitar a barrinha para ficar sempre o mesmo espaçamento, de 4 digitos +rs
        ButtonBar(
          children: [
            IconButton(onPressed: remove, icon: Icon(Icons.remove)),
            Text('R\$' + (widget.product.value * amount).toStringAsFixed(2)),
            IconButton(onPressed: add, icon: Icon(Icons.add)),
          ],
        )
      ],
    );
  }
}
