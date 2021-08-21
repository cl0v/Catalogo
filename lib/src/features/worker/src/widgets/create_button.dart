import 'package:flutter/material.dart';
import 'package:nutri/src/features/worker/src/models.dart';
import 'package:nutri/src/utils/injections.dart';

class CreateWorkerButton extends StatelessWidget {
  const CreateWorkerButton(
    this.worker, {
    Key? key,
  }) : super(key: key);

  final WorkerModel Function() worker;

  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Injections.workerRepository.create(worker());
      },
      label: Text('Cadastrar usuário'),
      icon: Icon(Icons.add),
    );
  }
}
