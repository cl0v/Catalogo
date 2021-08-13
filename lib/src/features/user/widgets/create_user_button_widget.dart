import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/models/user_model.dart';
import 'package:nutri/src/features/user/providers/user_provider.dart';
import 'package:nutri/src/features/user/repositories/user_repository.dart';

class CreateUserButtonWidget extends StatelessWidget {
  CreateUserButtonWidget({
    Key? key,
    required this.nameController,
    required this.phoneController,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text('Criar conta'),
      icon: Icon(Icons.person_add_alt),
      onPressed: () {
        IUserRepository repository = UserProvider.of(context).userRepository;
        repository.creator.create(
          UserModel(
            nameController.text,
            phoneController.text,
            emailController.text,
          ),
        );
      },
    );
  }
}
