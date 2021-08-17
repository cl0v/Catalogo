import 'package:flutter/material.dart';
import 'package:nutri/src/features/schedule/src/pages/scheduling.dart';
import 'package:nutri/src/utils/navigator.dart';

class ServiceList extends StatefulWidget {
  ServiceList({Key? key}) : super(key: key);

  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  final Map<String, bool> services = {
    'Cabelo': false,
    'Barba': false,
    'Bigode': false,
    // TODO: Pedir para que o usuário não
    // peça desconto ao encontrar com a pessoa, para isso terá politicar e termos de serviço.
    'Sobrancelha': false,
  };

  //TODO: Implementar calculo de valor total

  @override
  Widget build(BuildContext context) {
    //TODO: Remover apenas esse scaffold e jogar o body como um widget que fica responsável por listar os servicos
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          push(context, SchedulingPage());
        },
        label: Text('Agendar horário'),
        icon: Icon(Icons.timer),
      ),
      body: Column(
        children: [
          ...List.generate(services.keys.length, (index) {
            final text = services.keys.toList()[index];
            final check = services.values.toList()[index];
            return ListTile(
              title: Text(text),
              trailing: Checkbox(
                  value: check,
                  onChanged: (value) {
                    setState(() {
                      services[text] = value ?? !check;
                    });
                  }),
            );
          }),
          Spacer(),
          Column(
            children: [
              Text(
                'Valor total:',
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('R\$', style: Theme.of(context).textTheme.headline6,),
                  Text('15', style: Theme.of(context).textTheme.headline1,),//TODO: Corrigir essa tosquice
                  Text(',00', style: Theme.of(context).textTheme.headline6,),
                ],
              )
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
