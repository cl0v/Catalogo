import 'package:flutter/material.dart';
import 'package:nutri/src/features/schedule/src/pages/scheduling.dart';
import 'package:nutri/src/features/service/src/widgets/service_list.dart';
import 'package:nutri/src/features/worker/src/pages/schedule_client.dart';
import 'package:nutri/src/utils/navigator.dart';

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
                'R\$30,00',
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
                  _DashboardCustomButton('Agendar cliente', Colors.red,
                      onTap: () => push(context, ScheduleClientPage())),
                  _DashboardCustomButton('Atendimentos hoje', Colors.blue),
                  _DashboardCustomButton('Agenda completa', Colors.green),
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
