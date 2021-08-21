import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nutri/src/features/worker/src/models.dart';
import 'package:nutri/src/models/adress.dart';
import 'package:nutri/src/models/time_range.dart';

WorkerModel mockedWorkerModel = WorkerModel(
  name: 'name',
  occupation: 'occupation',
  adress: Adress(
    bairro: 'bairro',
    rua: 'rua',
    numero: 'numero',
    cidade: 'cidade',
    estado: 'estado',
    pais: 'pais',
  ),
  workingTime: TimeRange(
    start: TimeOfDay(hour: 8, minute: 0),
    end: TimeOfDay(hour: 18, minute: 0),
  ),
  interval: TimeRange(
    start: TimeOfDay(hour: 12, minute: 0),
    end: TimeOfDay(hour: 13, minute: 0),
  ),
);

final workerMap = {
  'name': 'name',
  'occupation': 'occupation',
  'adress': {
    'bairro': 'bairro',
    'rua': 'rua',
    'numero': 'numero',
    'cidade': 'cidade',
    'estado': 'estado',
    'pais': 'pais',
  },
  'workingTime': {
    'start': {
      'hour': 8,
      'minute': 0,
    },
    'end': {
      'hour': 18,
      'minute': 0,
    }
  },
  'interval': {
    'start': {
      'hour': 12,
      'minute': 0,
    },
    'end': {
      'hour': 13,
      'minute': 0,
    }
  },
};

main() {
  test('Testing model to map', () {
    final map = mockedWorkerModel.toMap();
    expect(map['name'], 'name');
    expect(map['occupation'], 'occupation');
    expect(map['adress']['bairro'], 'bairro');
    expect(map['workingTime']['start']['hour'], 8);
  });

  test('Testing model from map', () {
    final worker = WorkerModel.fromMap(workerMap);
    expect(worker, mockedWorkerModel);
  });
}
