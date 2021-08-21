import 'package:flutter/material.dart';
import 'package:nutri/src/pages/admin/create_worker.dart';
import 'package:nutri/src/pages/worker/add_new_service.dart';
import 'package:nutri/src/utils/navigator.dart';

// A parte de admin não preciso perder muito tempo com validações pois vai ser
// eu quem vai preencher. Até o momento que eu soltar as páginas para o publico.

class AdminRootPage extends StatefulWidget {
  const AdminRootPage({Key? key}) : super(key: key);

  @override
  _AdminRootPageState createState() => _AdminRootPageState();
}

class _AdminRootPageState extends State<AdminRootPage> {
  @override
  void initState() {
    Future.value(null).then((value) {
      if (value == null) {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (c) {
              return LoginFormPopUpWindow();
            });
      } else {
        print(value);
      }
    });
    super.initState();
  }

  TextEditingController userC = TextEditingController(text:'Id do user aq');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                push(context, CreateWorkerPage());
              },
              child: Text('Cadastrar funcionario'),
            ),
            TextFormField(controller: userC,),
            ElevatedButton(
              onPressed: () {
                push(context, AddNewServicePage(userC.text));
              },
              child: Text('Cadastrar serviço para o usuário de ID:'),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: Passar isso para o app todo futuramente
class LoginFormPopUpWindow extends StatelessWidget {
  LoginFormPopUpWindow({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Senha'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text("Entrar"),
                onPressed: () {
                  pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
