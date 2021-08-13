// import 'package:flutter/material.dart';
// import 'package:nutri/src/features/store/features/product/interfaces/product_bloc_interface.dart';
// import 'package:nutri/src/features/store/features/product/providers/product_provider.dart';

// class ProductAmountSelectorWidget extends StatefulWidget {
//   const ProductAmountSelectorWidget({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//   final ProductModel product;
//   @override
//   _ProductAmountSelectorWidgetState createState() =>
//       _ProductAmountSelectorWidgetState();
// }

// class _ProductAmountSelectorWidgetState
//     extends State<ProductAmountSelectorWidget> {
//   final ValueNotifier<int> amount = ValueNotifier<int>(0);
//   late final IProductBloc bloc;

//   @override
//   didChangeDependencies() {
//     bloc = ProductProvider.of(context).bloc;
//     super.didChangeDependencies();
//   }

//   remove() {
//     if (amount.value <= 0) return;
//     amount.value -= 1;
//     bloc.removeItem(widget.product);
//   }

//   add() {
//     amount.value += 1;
//     bloc.addItem(widget.product);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//       valueListenable: amount,
//       builder: (BuildContext c, int value, Widget? w) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text('R\$${widget.product.value}'),
//             Spacer(),
//             Expanded(
//               child: Text('${widget.product.title}'),
//               flex: 3,
//             ),
//             ButtonBar(
//               children: [
//                 IconButton(onPressed: remove, icon: Icon(Icons.remove)),
//                 Text('(${value.toString()}) x R\$' +
//                     (widget.product.value * value).toStringAsFixed(2)),
//                 IconButton(onPressed: add, icon: Icon(Icons.add)),
//               ],
//             )
//           ],
//         );
//       },
//     );
//   }
// }
