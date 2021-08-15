import 'package:flutter/material.dart';
import 'models.dart';
import 'repository.dart';

//TODO: Implement OrderPage

class OrderPage extends StatelessWidget {
  const OrderPage(
    this.id, {
    Key? key,
  }) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    print(id);
    return Scaffold(
      body: FutureBuilder<OrderModel>(
        future: FakeOrderRepository().reader.read(id),
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data == null)
            return Center(
              child: CircularProgressIndicator(),
            );
          print(snapshot.data!.toString());
          return Container(child: Text('Porra bro'),);
        },
      ),
    );
  }
}
