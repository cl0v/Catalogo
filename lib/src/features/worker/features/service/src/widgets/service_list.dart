import 'package:flutter/material.dart';

class ServicesList extends StatefulWidget {
  ServicesList({Key? key}) : super(key: key);

  @override
  _ServicesListState createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
//  TODO: Como vou receber os servicos
  final Map<String, bool> services = {
    'Cabelo': false,
    'Barba': false,
    'Bigode': false,
    'Sobrancelha': false,
    
  };

  //TODO: Implementar calculo de valor total

  @override
  Widget build(BuildContext context) {
    //TODO: Remover apenas esse scaffold e jogar o body como um widget que fica responsável por listar os servicos
    return Column(
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
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('R\$', style: Theme.of(context).textTheme.headline4,),
                  Text('15,00', style: Theme.of(context).textTheme.headline1,),//TODO: Corrigir essa tosquice
                  // Text(',00', style: Theme.of(context).textTheme.headline6,),
                ],
              )
            ],
          ),
          Spacer(),
        ],
    );
  }
}
