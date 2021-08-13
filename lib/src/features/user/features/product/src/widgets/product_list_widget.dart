import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/providers/user_provider.dart';

import '../models.dart';
import '../repository.dart';
import 'product_amount_selector_widget.dart';

class ProductListWidget extends StatefulWidget {
  ProductListWidget({
    Key? key,
  }) : super(key: key);
  //TODO: Receber o store id pelo provider;

  @override
  _ProductListWidgetState createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  late final IProductRepository repository;
  late final String uid;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    repository = UserProvider.of(context).productRepository!;
    uid = UserProvider.of(context).uid;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
        future: repository.reader.read(uid),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );
          if (snapshot.data == null)
            return Center(
              child: Text('Ocorreu um erro'),
            );
          List<ProductModel> list = snapshot.data!;
          if (list.length <= 0)
            return Center(
              child: Text('Nenhum item cadastrado nesse endereço'),
            );
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final ProductModel product = list[index];
              return ProductAmountSelectorWidget(
                product: product,
              );
              // return ListTile(
              //   title: Text(product.title),
              //   trailing: Text(product.price.toString()),
              // );
            },
          );
        });
  }
}
