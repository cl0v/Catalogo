import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/config/routes.dart';
import 'package:nutri/widgets/item_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../global.dart';

class ProdutsPage extends StatefulWidget {
  const ProdutsPage({Key? key}) : super(key: key);

  @override
  _ProdutsPageState createState() => _ProdutsPageState();
}

class _ProdutsPageState extends State<ProdutsPage> {
  final phone = '5533998525199';
  final instagram = 'liviaamanda_nutri';

  void _launchWhatsapp() async {
    // TODO: Quando tocar em enviar mensagem, enviará o link com a url
    // Mostrando os detalhes do pedido
    var url = "https://api.whatsapp.com/send?phone=$phone";
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  int total = 0;

  onTotalChanged(int v) {
    setState(() {
      total += v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livia Amanda'),
        actions: [
          IconButton(
            icon: Icon(Icons.navigate_before),
            onPressed: () async {
              await router.navigateTo(
                context,
                "${Routes.order}/1234",
              );
            },
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 52,
        padding: EdgeInsets.only(left: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total : R\$$total,00',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                textAlign: TextAlign.start,
              )
            ]),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Entrar em contato'),
        icon: Icon(Icons.send),
        onPressed: _launchWhatsapp,
      ),
      body: ItemListWidget(onChanged: onTotalChanged),
    );
  }
}

class ItemListWidget extends StatefulWidget {
  final Function(int) onChanged;
  const ItemListWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _ItemListWidgetState createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 12),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ItemWidget(
            onChanged: widget.onChanged,
          );
        },
      ),
    );
  }
}
