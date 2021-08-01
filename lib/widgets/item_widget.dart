import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  final Function(int) onChanged;

  const ItemWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  
  int amount = 0;
  int value = 100;

  remove() {
    setState(() {
      if (amount > 0) amount--;
    });
    widget.onChanged(-value);
  }

  add() {
    setState(() {
      amount++;
    });
    widget.onChanged(value);

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
          child: Text('Narra chocolate (R\$99,90)'),
          flex: 3,
        ),
        // TODO: Limitar a barrinha para ficar sempre o mesmo espaçamento, de 4 digitos +rs
        ButtonBar(
          children: [
            IconButton(onPressed: remove, icon: Icon(Icons.remove)),
            Text('R\$' + (value * amount).toString()),
            IconButton(onPressed: add, icon: Icon(Icons.add)),
          ],
        )
      ],
    );
  }
}
