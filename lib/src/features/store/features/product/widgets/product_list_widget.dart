// import 'package:flutter/material.dart';
// import 'package:nutri/src/features/store/features/product/providers/product_provider.dart';
// import 'package:nutri/src/features/store/features/product/repositories/product_repository.dart';
// import 'package:nutri/src/features/store/features/product/widgets/product_amount_selector_widget.dart';

// class ProductListWidget extends StatefulWidget {
//   const ProductListWidget({Key? key, required this.uid}) : super(key: key);
//   final String uid;

//   @override
//   _ProductListWidgetState createState() => _ProductListWidgetState();
// }

// class _ProductListWidgetState extends State<ProductListWidget> {
//   late final IProductRepository repository;

//   @override
//   void didChangeDependencies() {
//     repository = ProductProvider.of(context).repository;
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       minimum: EdgeInsets.symmetric(horizontal: 12),
//       child: FutureBuilder<List<ProductModel>>(
//         future: repository.get(),
//         builder: (context, snapshot) {
//           if (snapshot.data != null) {
//             final items = snapshot.data!;
//             return ListView(
//               children: items
//                   .map((e) => ProductAmountSelectorWidget(product: e))
//                   .toList(),
//             );
//           }
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }
