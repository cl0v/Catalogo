import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/src/providers.dart';
import '../models.dart';
import '../repository.dart';

class CreateProductButtonWidget extends StatelessWidget {
  const CreateProductButtonWidget({
    Key? key,
    required this.titleController,
    required this.valueController,
    required this.storeIdController,
  }) : super(key: key);

  final TextEditingController titleController;
  final TextEditingController valueController;
  final TextEditingController storeIdController;

  onPressed(context) {
    final String title = titleController.text;
    final double price = double.parse(valueController.text);
    final ProductModel product = ProductModel(title, price);

    IProductRepository repository = UserProvider.of(context).productRepository!;

    //TODO: Adicionar auth provider
    // IUserRepository userRepository = UserProvider.of(context).repository;
    // repository.creator.create(userRepository.reader.id(uid), product);

    repository.creator.create(storeIdController.text, product);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(context),
      child: Text('Cadastrar produto'),
    );
  }
}
