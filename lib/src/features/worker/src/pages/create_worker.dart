import 'package:flutter/material.dart';
import 'package:nutri/src/constants.dart';
import 'package:nutri/src/helpers/adress.dart';
import 'package:nutri/src/helpers/time_range.dart';

import '../models.dart';

class CreateWorkerPage extends StatefulWidget {
  @override
  _CreateWorkerPageState createState() => _CreateWorkerPageState();
}

class _CreateWorkerPageState extends State<CreateWorkerPage> {
  //Dados básicos da pessoa
  TextEditingController nameController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  //Dados de endereço
  TextEditingController adressBairroController = TextEditingController();
  TextEditingController adressStreetController = TextEditingController();
  TextEditingController adressNumberController = TextEditingController();
//Complemento (Cidade, Estado, Pais)
  TextEditingController adressCityController =
      TextEditingController(text: 'Joaíma');
  TextEditingController adressStateController =
      TextEditingController(text: 'MG');
  TextEditingController adressCountryController =
      TextEditingController(text: 'BR');

  //Dados para gerencia do tempo
  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  TextEditingController intervalStartController = TextEditingController();
  TextEditingController intervalEndController = TextEditingController();
  TextEditingController intervalBetweenSectionsController =
      TextEditingController();

  WorkerModel worker() {
    return WorkerModel(
      name: nameController.text,
      occupation: occupationController.text,
      adress: Adress(
        bairro: adressBairroController.text,
        rua: adressStreetController.text,
        numero: adressNumberController.text,
      ),
      workingTime:
          TimeRange(from: startController.text, to: endController.text),
      interval: TimeRange(
          from: intervalStartController.text, to: intervalEndController.text),
      description: descriptionController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Cadastrar usuário'),
        icon: Icon(Icons.add),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(12),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Dados básicos da pessoa
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Meu nome completo', labelText: 'Nome'),
              ),
              TextFormField(
                controller: occupationController,
                decoration: InputDecoration(
                    hintText: 'Designer de sobrancelhas',
                    labelText: 'Sobre mim (Opcional)'),
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                    hintText: 'Trabalho com ___ a ___ anos.',
                    labelText: 'Sobre mim (Opcional)'),
              ),
              Divider(),
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                'Endereço',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 18),
              ),
              //Dados de endereço
              TextFormField(
                controller: adressBairroController,
                decoration:
                    InputDecoration(hintText: 'Centro', labelText: 'Bairro'),
              ),
              TextFormField(
                controller: adressStreetController,
                decoration:
                    InputDecoration(hintText: 'Praça Paris', labelText: 'Rua'),
              ),
              //TODO: Tentar remover o número da rua de separar por virgual ou valor numerico na propria rua
              TextFormField(
                controller: adressNumberController,
                decoration: InputDecoration(hintText: '1', labelText: 'Numero'),
              ),
              //Complemento (Cidade, Estado, Pais)
              // TextFormField(
              //   controller: adressCityController,
              //   decoration:
              //       InputDecoration(hintText: 'Joaíma', labelText: 'Cidade'),
              // ),
              // TextFormField(
              //   controller: adressStateController,
              //   decoration: InputDecoration(hintText: 'MG', labelText: 'Estado'),
              // ),
              // TextFormField(
              //   controller: adressCountryController,
              //   decoration: InputDecoration(hintText: 'BR', labelText: 'País'),
              // ),

              Divider(),
              SizedBox(
                height: defaultPadding,
              ),
              //Dados para gerencia do tempo
              Text(
                'Trabalho de:',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 18),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: startController,
                      decoration: InputDecoration(
                          hintText: '8:00',
                          labelText:
                              'Início'), // Formatar para formato de horas
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Text('até'),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: endController,
                      decoration: InputDecoration(
                          hintText: '18:00', labelText: 'Final'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                'Intervalo de almoço é de:',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 18),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: intervalStartController,
                      decoration: InputDecoration(
                          hintText: '12:00', labelText: 'Início'),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Text('até')),
                  Expanded(
                    child: TextFormField(
                      controller: intervalEndController,
                      decoration: InputDecoration(
                          hintText: '13:00', labelText: 'Final'),
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: intervalBetweenSectionsController,
                decoration: InputDecoration(
                    hintText: '5 min (Deixar em branco significa 0 minutos)',
                    labelText:
                        'Intervalo entre atendimentos (minutos)[Opcional]'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
