import 'package:flutter/material.dart';

class OrderModel {
  String total;
  List<String> data;
}

class OrderViewerPage extends StatefulWidget {
  final String id;

  const OrderViewerPage(this.id);

  @override
  _OrderViewerPageState createState() => _OrderViewerPageState();
}

class _OrderViewerPageState extends State<OrderViewerPage> {
  // aplicar o inherited widget la didchangeddependencies (auth)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(widget.id),
      ),
    );
  }
}
