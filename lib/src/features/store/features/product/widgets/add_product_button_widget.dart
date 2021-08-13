// import 'package:flutter/material.dart';
// import 'package:nutri/src/features/store/features/product/providers/product_provider.dart';
// import 'package:nutri/src/features/store/features/product/repositories/product_repository.dart';

// class AddProductButtonWidget extends StatefulWidget {
//   const AddProductButtonWidget({
//     Key? key,
//     required this.titleController,
//     required this.valueController,
//   }) : super(key: key);

//   final TextEditingController titleController;
//   final TextEditingController valueController;

//   @override
//   _AddProductButtonWidgetState createState() => _AddProductButtonWidgetState();
// }

// class _AddProductButtonWidgetState extends State<AddProductButtonWidget> {
//   late final IProductRepository repository;

//   @override
//   didChangeDependencies() {
//     repository = ProductProvider.of(context).repository;
//     super.didChangeDependencies();
//   }

//   onPressed() async {
//     final String title = widget.titleController.text;
//     final num value = num.parse(widget.valueController.text);
//     final product = ProductModel(title: title, value: value);
//     repository.add(product);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       child: Text(
//         'Adicionar produto',
//       ),
//     );
//   }
// }
