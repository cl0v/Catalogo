import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/widgets/create_user_button_widget.dart';

class CreateUserPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'name'),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'email'),
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(hintText: 'phone'),
            ),

            CreateUserButtonWidget(
              nameController: nameController,
              phoneController: phoneController,
              emailController: emailController,
            ),
          ],
        ),
      ),
    );
  }
}
