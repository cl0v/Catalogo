import 'package:flutter/material.dart';
import 'package:nutri/src/pages/worker/calendar.dart';
import 'package:nutri/src/pages/worker/schedule_client.dart';
import 'package:nutri/src/pages/worker/add_new_service.dart';
import 'package:nutri/src/utils/navigator.dart';
import 'package:url_launcher/url_launcher.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'R\$30,00', // Y reais de X clients
                // TODO: As vezes a informação de reais não é mais importante do q a lista de produtos por exemplo
                // Entao posso abrir um botão que me mostra meus dados,
                // Porém já enviar notificacao informando
                style: textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  _DashboardCustomButton(
                    'Agendar cliente',
                    Colors.red,
                    onTap: () => push(
                      context,
                      ScheduleClientPage(),
                    ),
                  ),
                  _DashboardCustomButton(
                    'Agenda completa',
                    Colors.blue,
                    onTap: () => push(
                      context,
                      TableBasicsExample(),
                    ),
                  ),
                  _DashboardCustomButton(
                    'Adicionar serviço',
                    Colors.green,
                    onTap: () => push(context, AddNewServicePage('ID do usuário')), // TODO: Implementar id do usuário
                  ),
                  _DashboardCustomButton(
                    'Solicitar alteração em meu perfil',
                    Colors.purple,
                    // TODO: Exibir lista de itens do perfil, botão de solicitar alteração.
                    //
                    onTap: () async {
                      var whatsappUrl = "whatsapp://send?phone=5533998525199";
                      await canLaunch(whatsappUrl)
                          ? launch(whatsappUrl)
                          : print(
                              "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                    },
                  ),
                  // _DashboardCustomButton('Contatar suporte', Colors.yellow),
                ],
              )),
        ],
      ),
    );
  }
}

class _DashboardCustomButton extends StatelessWidget {
  const _DashboardCustomButton(
    this.text,
    this.color, {
    this.onTap,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      onPressed: onTap,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
