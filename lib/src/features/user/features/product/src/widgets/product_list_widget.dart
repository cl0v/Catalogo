
import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/src/providers.dart';

import '../models.dart';
import '../repository.dart';
import '../widgets.dart';

// TODO: Usar as 3 páginas para criar a lista de itens, abaixo do preço e quantidade terá um botao colado no outro de (-/+)

//https://github.com/MarceloFV/Flutter-Custom-Animation-Grocery-App/blob/master/lib/screens/home/components/cart_details_view.dart
//https://github.com/MarceloFV/Flutter-Custom-Animation-Grocery-App/blob/master/lib/screens/home/components/cart_detailsview_card.dart
//https://github.com/MarceloFV/Flutter-Custom-Animation-Grocery-App/blob/master/lib/components/price.dart

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
              return ProductWidget(
                product: product,
              );
            },
          );
        });
  }
}
