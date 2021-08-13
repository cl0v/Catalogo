// import 'package:flutter/material.dart';
// import 'package:nutri/src/features/store/features/product/bloc/product_bloc.dart';
// import 'package:nutri/src/features/store/features/product/providers/product_provider.dart';
// import 'package:nutri/src/features/store/features/product/repositories/product_repository.dart';
// import 'package:nutri/src/features/store/features/product/widgets/add_product_button_widget.dart';

// class CreateProductPage extends StatefulWidget {
//   final String id;
//   const CreateProductPage({Key? key, required this.id}) : super(key: key);

//   @override
//   _CreateProductPageState createState() => _CreateProductPageState();
// }

// class _CreateProductPageState extends State<CreateProductPage> {
//   final TextEditingController titleController = TextEditingController();
//   final TextEditingController valueController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return ProductProvider(
//       repository: ProductRepository(widget.id),
//       bloc: ProductBloc(),
//       child: Scaffold(
//         body: Form(
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: titleController,
//               ),
//               TextFormField(
//                 controller: valueController,
//               ),
//               AddProductButtonWidget(
//                 titleController: titleController,
//                 valueController: valueController,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
