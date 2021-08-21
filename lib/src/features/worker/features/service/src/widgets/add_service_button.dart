import 'package:flutter/material.dart';
import 'package:nutri/src/utils/injections.dart';

import '../models.dart';

class AddServiceButton extends StatelessWidget {
  const AddServiceButton(
      {Key? key, required this.service, required this.userid})
      : super(key: key);
  final ServiceModel Function() service;
  final String userid;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Injections.serviceRepository.create(userid, service());
      },
      label: Text('Confirmar'),
      icon: Icon(Icons.arrow_forward),
    );
  }
}
