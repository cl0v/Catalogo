import 'package:flutter/material.dart';
import 'package:nutri/src/constants.dart';

class CreateWorkerPage extends StatefulWidget {
  @override
  _CreateWorkerPageState createState() => _CreateWorkerPageState();
}

class _CreateWorkerPageState extends State<CreateWorkerPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  TextEditingController intervalStartController = TextEditingController();
  TextEditingController intervalEndController = TextEditingController();
  TextEditingController intervalBetweenSectionsController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Meu nome completo', labelText: 'Nome'),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                  hintText: 'Trabalho com ___ a ___ anos.',
                  labelText: 'Sobre mim (Opcional)'),
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Text(
              'Trabalho de:',
              style:
                  Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: startController,
                    decoration:
                        InputDecoration(hintText: '8:00', labelText: 'Início'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Text('até'),
                ),
                Expanded(
                  child: TextFormField(
                    controller: endController,
                    decoration:
                        InputDecoration(hintText: '18:00', labelText: 'Final'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Text(
              'Intervalo de almoço é de:',
              style:
                  Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: intervalStartController,
                    decoration:
                        InputDecoration(hintText: '12:00', labelText: 'Início'),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Text('até')),
                Expanded(
                  child: TextFormField(
                    controller: intervalEndController,
                    decoration:
                        InputDecoration(hintText: '13:00', labelText: 'Final'),
                  ),
                ),
              ],
            ),
            TextFormField(
              controller: intervalBetweenSectionsController,
              decoration: InputDecoration(
                  hintText: '5 min',
                  labelText: 'Intervalo entre atendimentos (minutos)'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Cadastrar usuário')),
          ],
        ),
      ),
    );
  }
}
