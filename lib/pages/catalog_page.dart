import 'package:flutter/material.dart';
import 'package:nutri/models/product_model.dart';
import 'package:nutri/models/product_order_model.dart';
import 'package:nutri/repositories/order_repository.dart';
import 'package:nutri/services/final_value_calculator_service.dart';
import 'package:nutri/services/whatsapp_launcher_service.dart';
import 'package:nutri/widgets/item_widget.dart';

final productList = [
  ProductModel(title: 'Naara chocolate', value: 149.9),
  ProductModel(title: 'Naara manga', value: 39.9),
  ProductModel(title: 'Naara vanilla', value: 22.9),
  ProductModel(title: 'Naara chocolate', value: 149.9),
  ProductModel(title: 'Naara chocolate', value: 149.9),
  ProductModel(title: 'Naara chocolate', value: 149.9),
];

final productOrderList = <ProductOrder>[];

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final valueCalculator = FinalValueCalculatorService();
  final orderRepository = OrderRepository();

  onProductAmountChanged(ProductModel product, int amount) {
    ProductOrder productOrder =
        ProductOrder(product.title, amount, product.value * amount);

    final idx = productOrderList
        .indexWhere((element) => element.title == product.title);
    if (idx == -1) {
      productOrderList.add(productOrder);
    } else {
      productOrderList[idx] = productOrder;
    }

    double total = 0;
    productOrderList.forEach((e) => total += e.total);
    finalValue = valueCalculator.onTotalChanged(total);
    finalValue = total;
  }

  double finalValue = 0;

  onSubmit() async {
    //TODO: Valor total nao foi enviado
    final r = await orderRepository.order(productOrderList, finalValue);
    WhatsAppLauncherService().launch(r);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Livia Amanda'),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 52,
          padding: EdgeInsets.only(left: 16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ValueListenableBuilder(
                    valueListenable: valueCalculator.totalValue,
                    builder: (c, double value, b) {
                      return Text(
                        'Total : R\$${value.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                        textAlign: TextAlign.start,
                      );
                    }),
              ]),
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Entrar em contato'),
          icon: Icon(Icons.send),
          onPressed: onSubmit,
        ),
        body: ListView(
          children: productList
              .map((p) => ItemWidget(
                    onAmountChanged: onProductAmountChanged,
                    product: p,
                  ))
              .toList(),
        ));
  }
}
