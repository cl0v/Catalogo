import 'dart:convert';

import 'package:nutri/src/models/adress.dart';
import 'package:nutri/src/models/time_range.dart';

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

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'occupation': occupation,
      'adress': adress.toMap(),
      'description': description,
      'workingTime': workingTime.toMap(),
      'interval': interval.toMap(),
    };
  }

  factory WorkerModel.fromMap(Map<String, dynamic> map) {
    return WorkerModel(
      name: map['name'],
      occupation: map['occupation'],
      adress: Adress.fromMap(map['adress']),
      description: map['description'],
      workingTime: TimeRange.fromMap(map['workingTime']),
      interval: TimeRange.fromMap(map['interval']),
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkerModel.fromJson(String source) => WorkerModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is WorkerModel &&
      other.name == name &&
      other.occupation == occupation &&
      other.adress == adress &&
      other.description == description &&
      other.workingTime == workingTime &&
      other.interval == interval;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      occupation.hashCode ^
      adress.hashCode ^
      description.hashCode ^
      workingTime.hashCode ^
      interval.hashCode;
  }

  @override
  String toString() {
    return 'WorkerModel(name: $name, occupation: $occupation, adress: $adress, description: $description, workingTime: $workingTime, interval: $interval)';
  }
}
