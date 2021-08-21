import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:nutri/src/pages/admin/create_worker.dart';
import 'package:nutri/src/pages/admin/root.dart';
import 'package:nutri/src/pages/calendar.dart';
import 'package:nutri/src/pages/worker_dashboard.dart';
import '/src/config/application.dart';
import '/src/config/routes.dart';



class AppComponent extends StatefulWidget {
  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {
  AppComponentState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Injetar dependencias antes do Material app irá permitir acesso ao context.of em todo o app, melhor lugar para garantir uma autenticacao super segura
    final app = MaterialApp(
      title: 'Fluro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // onGenerateRoute: Application.router.generator,
      home: CalendarPage(),
    );
    return app;
  }
}