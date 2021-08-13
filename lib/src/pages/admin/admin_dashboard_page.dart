import 'package:flutter/material.dart';
import 'package:nutri/src/features/user/pages/create_user_page.dart';
import 'package:nutri/src/utils/navigator.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({Key? key}) : super(key: key);

  @override
  _AdminDashboardPageState createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  final idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: Botar um autenticador antes 
    return Scaffold(
      body: Column(
        children: [

          
          ElevatedButton(
            onPressed: () {
              push(context, CreateUserPage());
            },
            child: Text('Cadastrar usuário'),
          ),

          
          // TextFormField(
          //   decoration: InputDecoration(labelText: 'Id da loja'),
          //   controller: idController,
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     push(
          //       context,
          //       CreateProductPage(
          //         id: idController.text,
          //       ),
          //     );
          //   },
          //   child: Text('Cadastrar produtos'),
          // )
        ],
      ),
    );
  }
}
