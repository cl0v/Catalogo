import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '/src/config/application.dart';
import '/src/config/routes.dart';

//Colors.blueAccent[200] Cor do futuro E o resto icone branco e preto(Provavelmente a mesma merda no tema escuro)
//

// trailing:MaterialButton(height: double.infinity,onPressed: (){}, child: Icon(Icons.add), color: Colors.green,),
// leading: MaterialButton(height: double.infinity, onPressed: (){}, child: Icon(Icons.remove), color: Colors.red,),
// Ou botao no sistema de seletor por arrasto

//TODO: Estrelha que muda o degrade e opacidade nao deixa
//TODO: O que a pessoa tem, pode ser popularidade ou boa avaliação, mas isso vai dizer é alguma formula pra calcular os dois, dificil dar nota ruim pra alguem q atendeu 10 pessoas e 8 avaliaram... evidentemente teria estrela amarela, e tambem uma pessoa com muito tempo de app, 100 likes, 2mil atendimentos, ainda sim é alguem que vale dar estrela amarela full

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
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: Colors.blueAccent[200],
        scaffoldBackgroundColor: Colors.blueAccent[200],
      ),
      onGenerateRoute: Application.router.generator,
      home: TelaTest2(),
    );
    return app;
  }
}

class TelaTest2 extends StatelessWidget {
  const TelaTest2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              child: ExpansionTile(
                leading: Text('10:00'),
                title: Text('R\$100,00'),
                subtitle: Text('Renata do chan'),
                expandedAlignment: Alignment.centerLeft,
                children: [
                  Text('> Corte de cabelo')
                  // Depois adicionar botoes de concluido
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* Cmmons

*/
// Quantas estrelas....
var colorList = [
  Colors.yellow[900]?.withOpacity(.2),
  Colors.yellow[800]?.withOpacity(.4),
  Colors.yellow[700]?.withOpacity(.6),
  Colors.yellow[600]?.withOpacity(.8),
  Colors.yellow,
];

class Tela1Test extends StatefulWidget {
  const Tela1Test({Key? key}) : super(key: key);

  @override
  _Tela1TestState createState() => _Tela1TestState();
}

class _Tela1TestState extends State<Tela1Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ...List.generate(
              colorList.length,
              (index) => ListTile1(colorList[index]!),
            ),
            // ListTile2(),
          ],
        ),
      ),
    );
  }
}

//

class ListTile1 extends StatelessWidget {
  final Color color;
  const ListTile1(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text('Fernanda Breder'), //Usar a logo da pessoa
          trailing: Icon(
            Icons.star,
            color: color,
          ),
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          subtitle: Text('Designer')
          // subtitle: Wrap(children: [ Icon(Icons.place,size: 16, color: Colors.red[300],),Text('12km')],), // Aquele pontinho preto?
          // color: color,
          ),
    );
  }
}

///Estrela que muda o degrade
/// Nome completo da pessoa

class ListTile2 extends StatelessWidget {
  const ListTile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
