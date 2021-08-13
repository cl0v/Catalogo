import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/features/order/models/order_reader_model.dart';
import 'package:nutri/src/features/user/features/order/repositories/order_repository.dart';

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
      body: FutureBuilder<OrderReaderModel>(
        future: OrderRepository().reader.read(id),
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data == null)
            return Center(
              child: CircularProgressIndicator(),
            );
          print(snapshot.data!.toString());
          return Container();
        },
      ),
    );
  }
}
