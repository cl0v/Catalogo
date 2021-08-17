import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RootPage extends StatefulWidget {
  static String routeName = "/root";
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Entre em contato para receber ajuda para criar seu catálogo.'),
            
            TextButton(onPressed: (){
              Clipboard.setData(ClipboardData(text: "5533998525199"));
            }, child: Text('Toque para copiar o telefone')),
            TextButton(onPressed: (){
              Clipboard.setData(ClipboardData(text: 'https://api.whatsapp.com/send?phone=5533998525199'));
            }, child: Text('Toque para copiar o link para WhatsApp'))
          
          ],
        ),
      ),
    );
  }
}
