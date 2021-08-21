import 'package:flutter/material.dart';
import 'package:nutri/src/constants.dart';
import 'package:nutri/src/features/worker/src/widgets/create_button.dart';
import 'package:nutri/src/models/adress.dart';
import 'package:nutri/src/models/time_range.dart';
import 'package:weekday_selector/weekday_selector.dart';

import '../../features/worker/src/models.dart';

class CreateWorkerPage extends StatefulWidget {
  @override
  _CreateWorkerPageState createState() => _CreateWorkerPageState();
}

class _CreateWorkerPageState extends State<CreateWorkerPage> {
  final values = [false]..addAll(List.filled(5, true))..add(false);
  final weekdays = [
    'Domingo',
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sabado',
  ];
  final shortWeekdays = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'];

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
  TimeOfDay startTime = TimeOfDay(hour: 8, minute: 0);
  TimeOfDay endTime = TimeOfDay(hour: 18, minute: 0);
  TimeOfDay intervalStartTime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay intervalEndTime = TimeOfDay(hour: 13, minute: 0);
  TextEditingController intervalBetweenSectionsController =
      TextEditingController();


//https://www.kindacode.com/article/working-with-time-picker-in-flutter/#Using_24-Hour_12-Hour_Format
// Usando formato de 24h no time picker
  String time(TimeOfDay time) => MaterialLocalizations.of(context)
      .formatTimeOfDay(time, alwaysUse24HourFormat: true);

  WorkerModel worker() {
    return WorkerModel(
      name: nameController.text,
      occupation: occupationController.text,
      description: descriptionController.text,
      adress: Adress(
        bairro: adressBairroController.text,
        rua: adressStreetController.text,
        numero: adressNumberController.text,
        cidade: adressCityController.text,
        estado: adressStateController.text,
        pais: adressCountryController.text,
      ),
      workingTime: TimeRange(
        start: startTime,
        end: endTime,
      ),
      interval: TimeRange(
        start: intervalStartTime,
        end: intervalEndTime,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar profissional'),
      ),
      floatingActionButton: CreateWorkerButton(worker),
      body: SafeArea(
        minimum: EdgeInsets.all(12),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dados básicos da pessoa
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Meu nome completo', labelText: 'Nome'),
              ),
              TextFormField(
                controller: occupationController,
                decoration: InputDecoration(
                    hintText: 'Designer de sobrancelhas',
                    labelText: 'Profissão'),
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
                style: textTheme.headline6?.copyWith(fontSize: 18),
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
              // ),     v  c             sdfdasf

              Divider(),
              SizedBox(
                height: defaultPadding,
              ),
              //Dados para gerencia do tempo
              Text(
                'Trabalho de: ',
                style: textTheme.headline6?.copyWith(fontSize: 18),
              ),
              WeekdaySelector(
                  weekdays: weekdays,
                  shortWeekdays: shortWeekdays,
                  firstDayOfWeek: 0,
                  selectedFillColor: Colors.indigo,
                  onChanged: (v) {
                    //TODO: Seleciona o dia da semana
                    print(v);
                    setState(() {
                      values[v % 7] = !values[v % 7];
                    });
                  },
                  values: values),
                  
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () async {
                      final value = await showTimePicker(
                          context: context, initialTime: startTime);
                      setState(() {
                        startTime = value ?? startTime;
                      });
                    },
                    child: Text(time(startTime)),
                    // child: Text(startTime.format(context)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Text('até'),
                  ),
                  TextButton(
                    onPressed: () async {
                      final value = await showTimePicker(
                          context: context, initialTime: endTime);
                      setState(() {
                        endTime = value ?? endTime;
                      });
                    },
                    child: Text(time(endTime)),
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                'Intervalo de almoço é de:',
                style: textTheme.headline6?.copyWith(fontSize: 18),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () async {
                      final value = await showTimePicker(
                          context: context, initialTime: intervalStartTime);
                      setState(() {
                        intervalStartTime = value ?? intervalStartTime;
                      });
                    },
                    child: Text(time(intervalStartTime)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Text('até'),
                  ),
                  TextButton(
                    onPressed: () async {
                      final value = await showTimePicker(
                          context: context, initialTime: intervalEndTime);
                      setState(() {
                        intervalEndTime = value ?? intervalEndTime;
                      });
                    },
                    child: Text(time(intervalEndTime)),
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
