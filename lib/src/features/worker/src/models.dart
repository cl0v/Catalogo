import 'package:nutri/src/helpers/adress.dart';
import 'package:nutri/src/helpers/time_range.dart';

//TODO: Nao preocupar muito com isso agora
// Enviar algumas fotos de exemplo pra pessoa poder sacar como é o trabalho (MAX (9FOTOS))
// dela, copia do instagram mas uma tab
class WorkerModel {
  ///Nome do trabalhador
  String name;

  ///Qual a categoria que ela se enquadra em profissoes (Cabeleleiro, Conserto'' de ar)
  String occupation;

  ///Endereço onde a pessoa trabalha.
  Adress adress;

  ///Breve descrição sobre a pessoa
  String? description;

  ///Horarios em que a agenta está aberta > 8:00 até 18:00
  TimeRange workingTime;

  // Dias da semana....

  ///Horarios de almoço ou intervalo > 12:00 até 13:00
  TimeRange interval;

  WorkerModel({
    required this.name,
    required this.occupation,
    required this.adress,
    required this.workingTime,
    required this.interval,
    this.description,
  });
}
