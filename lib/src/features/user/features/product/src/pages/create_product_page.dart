import 'package:flutter/material.dart';

import '../widgets.dart';

class CreateProductPage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  final TextEditingController storeIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(hintText: 'title'),
            ),
            TextFormField(
              controller: valueController,
              decoration: InputDecoration(hintText: 'price'),
            ),
            TextFormField(
              controller: storeIdController,
              decoration: InputDecoration(hintText: 'storeId'),
            ),
            CreateProductButtonWidget(
              titleController: titleController,
              valueController: valueController,
              storeIdController: storeIdController,
            )
          ],
        ),
      ),
    );
  }
}
