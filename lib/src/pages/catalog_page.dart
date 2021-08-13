// import 'package:flutter/material.dart';


// class CatalogPage extends StatefulWidget {
//   const CatalogPage({Key? key}) : super(key: key);

//   @override
//   _CatalogPageState createState() => _CatalogPageState();
// }

// class _CatalogPageState extends State<CatalogPage> {
//   final valueCalculator = FinalValueCalculatorService();
//   final orderRepository = OrderRepository();

//   double finalValue = 0;

//   onSubmit() async {
//     //TODO: Valor total nao foi enviado
//     final r = await orderRepository.order(productOrderList, finalValue);
//     WhatsAppLauncherService().launch(r);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Livia Amanda'),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: Container(
//             height: 52,
//             padding: EdgeInsets.only(left: 16),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ValueListenableBuilder(
//                       valueListenable: valueCalculator.totalValue,
//                       builder: (c, double value, b) {
//                         return Text(
//                           'Total : R\$${value.toStringAsFixed(2)}',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 32),
//                           textAlign: TextAlign.start,
//                         );
//                       }),
//                 ]),
//           ),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//         // floatingActionButton: ConfirmationButton(),
//         body: ListView(
//             // children: productList
//             //     .map((p) => ItemWidget(
//             //           onAmountChanged: onProductAmountChanged,
//             //           product: p,
//             //         ))
//             //     .toList(),
//             ));
//   }
// }
