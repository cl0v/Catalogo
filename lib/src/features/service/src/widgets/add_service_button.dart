import 'package:flutter/material.dart';
import 'package:nutri/src/features/service/src/models.dart';

class AddServiceButton extends StatelessWidget {
  const AddServiceButton({Key? key, required this.service}) : super(key: key);
  final ServiceModel Function() service;
  onPressed(context) {
    //TODO: Implement onPressed
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => onPressed(context),
      label: Text('Confirmar'),
      icon: Icon(Icons.arrow_forward),
    );
  }
}
