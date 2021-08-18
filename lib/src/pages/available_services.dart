import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:nutri/src/features/schedule/src/pages/scheduling.dart';
import 'package:nutri/src/features/service/src/widgets/service_list.dart';
import 'package:nutri/src/utils/navigator.dart';

import 'package:transparent_image/transparent_image.dart';

class AvailableServicesPage extends StatefulWidget {
  const AvailableServicesPage({Key? key}) : super(key: key);

  @override
  _AvailableServicesPageState createState() => _AvailableServicesPageState();
}

class _AvailableServicesPageState extends State<AvailableServicesPage> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      stickyFrontLayer: true,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          push(context, SchedulingPage());
        },
        label: Text('Agendar horário'),
        icon: Icon(Icons.timer),
      ),
      appBar: BackdropAppBar(
        leading: BackButton(),
        title: Text("Fernanda Breder"),
        actions: <Widget>[_CustomToggleButton()],
      ),
      backLayer: _ProfessionalInfos(),
      frontLayer: ServicesList(),
    );
  }
}

class _ProfessionalInfos extends StatelessWidget {
  const _ProfessionalInfos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            'Prof: Designer de Sobrancelhas',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          title: Text(
            'Endereço: Praça Paris 01, Centro',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          title: Text(
            'Contato: (33) 99851-5199',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ExpansionTile(
          title: Center(
            child: Text(
              'Ver galeria de fotos',
              style: TextStyle(color: Colors.white),
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  _CustomImage('https://picsum.photos/150?image=9'),
                  _CustomImage('https://picsum.photos/150?image=3'),
                  _CustomImage('https://picsum.photos/150?image=2'),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class _CustomImage extends StatelessWidget {
  const _CustomImage(this.imgUrl,{
    Key? key,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: imgUrl,
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }
}

class _CustomToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Backdrop.of(context).fling(),
      icon: Icon(Icons.info_outline),
    );
  }
}
