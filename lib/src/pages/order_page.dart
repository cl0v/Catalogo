//TODO: Cor de fundo laranja que nao maxuca os olhos

// import 'package:flutter/material.dart';
// import 'package:nutri/models/order_model.dart';

// class OrderViewerPage extends StatefulWidget {
//   final String id;

//   const OrderViewerPage(this.id);

//   @override
//   _OrderViewerPageState createState() => _OrderViewerPageState();
// }

// class _OrderViewerPageState extends State<OrderViewerPage> {
//   late OrderRepository repository = OrderRepository();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<Order>(
//           future: repository.fromId(widget.id),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               if (snapshot.data != null) {
//                 Order o = snapshot.data!;
//                 return ListView(
//                   children: o.data
//                       .map((e) => ListTile(
//                             title: Text(e.title),
//                             leading: Text(e.amout.toString()),
//                             trailing: Text('R\$${e.total.toStringAsFixed(2)}')
//                           ))
//                       .toList(),
//                 );
//               }
//             }
//             return Container(
//               child: Text(widget.id),
//             );
//           }),
//     );
//   }
// }
