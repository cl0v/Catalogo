import 'package:flutter/material.dart';


 //TODO: Fazer os botoes terem utilidades
 //TODO: Criar lógica de agendamento funcional

class SchedulingPage extends StatefulWidget {
  const SchedulingPage({Key? key}) : super(key: key);

  @override
  _SchedulingPageState createState() => _SchedulingPageState();
}

class _SchedulingPageState extends State<SchedulingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('Precisa ir pra pagina de pagamentos');
          //TODO: Implement push to payment
        },
        backgroundColor: Colors.green,
        label: Text('Confirmar agendamento'),
        icon: Icon(Icons.check),
      ),
      //TODO: Texto dizendo qual a proxima data disponível para facilitar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            // TODO: Tomar cuidado com fuso horario...
            flex: 2,
            child: Column(
              children: [
                Text(
                  '8:40',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  '18 de Agosto',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  '*Por favor siga as instruções fornecidas após a finalização do pedido.',
                  textAlign: TextAlign.right,
                ),
                //TODO: Dar mais foco para a data
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  //TODO: Implement
                },
                icon: Icon(Icons.timer),
                label: Text('Alterar horário'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //TODO: Implement
                },
                icon: Icon(Icons.calendar_today),
                label: Text('Alterar data'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'ou',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Expanded(child: Divider()),
            ],
          ),
          TextButton(
              onPressed: () {
                //TODO: Implement
              },
              child: Text('Escolher manualmente')),
          Spacer(),
        ],
      ),
    );
  }
}
