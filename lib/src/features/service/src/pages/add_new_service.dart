import 'package:flutter/material.dart';
import 'package:nutri/src/features/service/src/models.dart';
import 'package:nutri/src/features/service/src/widgets/add_service_button.dart';

// TODO: Service value simulator... permite a pessoa ver uma versão
// de usuário para calcular o valor quando ela adiciona alguns servicos especificos

class AddNewServicePage extends StatefulWidget {
  // final f = ServiceModel(
  // name: name,
  // price: price,
  // timeSpentInMinutes: timeSpentInMinutes,
  // discountOnSecondaryService: discountOnSecondaryService,
  // );

  @override
  _AddNewServicePageState createState() => _AddNewServicePageState();
}

class _AddNewServicePageState extends State<AddNewServicePage> {
  ServiceModel service() {
    return ServiceModel(
      name: serviceNameController.text,
      price: double.parse(servicePriceController.text),
      timeSpentInMinutes: int.parse(serviceTimeController.text),
      discountOnSecondaryService: double.parse(serviceDiscountController.text),
      description: serviceDescriptionController.text,
    );
  }

  TextEditingController serviceNameController = TextEditingController();
  TextEditingController servicePriceController = TextEditingController();
  TextEditingController serviceTimeController = TextEditingController();
  TextEditingController serviceDiscountController = TextEditingController();
  TextEditingController serviceDescriptionController = TextEditingController();

  bool isMyMainService = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddServiceButton(service: service),
      body: Form(
        child: Column(
          children: [
            //TODO: Sugerir diferente para cada profissao cadastrada
            //Exp: Corte de cabelo se a profissao for cabeleleiro
            //Exp: Sobrancelha alinhamento ou rena sei la
            TextFormField(
              controller: serviceNameController,
              decoration: InputDecoration(
                  hintText: 'Exemplo: Corte de cabelo',
                  labelText: 'Nome do serviço'),
            ),
            TextFormField(
              controller: serviceDescriptionController,
              decoration: InputDecoration(
                  hintText: 'Exemplo: Corte de cabelo perfeito',
                  labelText: 'Descrição do serviço (Opcional)'),
            ),
            TextFormField(
              controller: servicePriceController,
              decoration: InputDecoration(
                  hintText: 'Exemplo: R\$15,00', labelText: 'Valor do servico'),
            ),
            TextFormField(
              controller: serviceTimeController,
              decoration: InputDecoration(
                  hintText: 'Exemplo: 5 min',
                  labelText: 'Tempo de serviço (minutos)'),
            ),

            // Switch que informa se é o serviço principal
            ListTile(
              trailing: Switch(
                  value: isMyMainService,
                  onChanged: (value) {
                    //TODO: Definir como servico principal...
                    setState(() {
                      isMyMainService = value;
                    });
                  }),
              title: Text('Definir como serviço principal'),
              subtitle: Text(
                '*Só pode ter um serviço principal',
              ),
              // Adicionar o ⚠️ para avisar que só pode ter um... futuramente caso ela marce, já vai ter salvo se ela tem algum e vai por ele como o principal.
              // TODO: Entregar quando essa parte tiver pronta
            ),

            TextFormField(
              controller: serviceDiscountController,
              decoration: InputDecoration(
                  hintText: 'Exemplo: 5%',
                  labelText: 'Desconto aplicado para serviço extra'),
            ),

            ListTile(
              trailing: Text('R\$5,00'),
              title: Text('Você receberá:'),
              subtitle: Text('Caso seu serviço principal esteja selecionado'),
            ),

            /// Desconto para quando selecionado outro serviço

            // TextFormField(
            //   controller: storeIdController,
            //   decoration: InputDecoration(hintText: 'storeId'),
            // ),
            // CreateProductButtonWidget(
            //   titleController: titleController,
            //   valueController: valueController,
            //   storeIdController: storeIdController,
            // )
          ],
        ),
      ),
    );
  }
}
