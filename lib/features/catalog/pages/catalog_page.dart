import 'package:flutter/material.dart';
import 'package:nutri/features/catalog/interfaces/catalog_interface.dart';
import 'package:nutri/features/catalog/repositories/catalog_repository.dart';
import 'package:nutri/features/catalog/widgets/item_amount_selector_widget.dart';
import 'package:nutri/features/catalog/widgets/order_sender_button_widget.dart';
import 'package:nutri/models/product_model.dart';

class CatalogPage extends StatelessWidget {
  CatalogPage({Key? key}) : super(key: key);

  final ICatalog repository = CatalogRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: OrderSenderButtonWidget(),
      body: FutureBuilder<List<ProductModel>>(
        future: repository.get('uid'),
        builder: (context, snapshot) {
          // repository.get(uid)
          if (snapshot.data != null) {
            final items = snapshot.data!;
            return ListView(
              children: items
                  .map((e) => ItemAmountSelectorWidget(product: e))
                  .toList(),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
