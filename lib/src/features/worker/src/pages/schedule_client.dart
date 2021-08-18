import 'package:flutter/material.dart';
import 'package:nutri/src/features/schedule/src/pages/scheduling.dart';
import 'package:nutri/src/features/service/src/widgets/service_list.dart';
import 'package:nutri/src/utils/navigator.dart';






class ScheduleClientPage extends StatefulWidget {
  const ScheduleClientPage({Key? key}) : super(key: key);

  @override
  _ScheduleClientPageState createState() => _ScheduleClientPageState();
}

class _ScheduleClientPageState extends State<ScheduleClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agendar cliente'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () => push(context, SchedulingPage()),
      ),
      body: Column(
        
        children: [
          TextFormField(decoration: InputDecoration(hintText: 'Livia Amanda', labelText: 'Nome'),),
          SizedBox(height: 12,),
          Expanded(child: ServicesList()),
        ],
      ),
    );
  }
}
