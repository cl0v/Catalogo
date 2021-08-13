import 'package:flutter/material.dart';
import 'package:nutri/src/constants/contact.dart';
import 'package:nutri/src/utils/navigator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'admin/admin_dashboard_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //   icon: Icon(Icons.message),
      //   label: Text('Entrar em contato'),
      //   onPressed: () async {
      //     var url = "https://api.whatsapp.com/send?phone=$myPhone";
      //     await canLaunch(url)
      //         ? await launch(url)
      //         : throw 'Could not launch $url';
      //   },
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Entre em contato para receber ajuda para criar seu catálogo'),
          ],
        ),
      ),
    );
  }
}
