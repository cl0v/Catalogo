import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nutri/src/helpers/time_divisor.dart';
import 'package:nutri/src/models/time_range.dart';

main() {
  test('Quantas consultas dentro do tempo', () {
    final range = TimeRange(
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 11, minute: 0));

    final timeSpent = Duration(hours: 1);
    TimeDivisor divisor = TimeDivisor();

    expect(divisor.divide(range, timeSpent).length, 3);
  });

  //

  test(
      'Quantas consultas dentro do tempo quando tem mais tempo do que a duração',
      () {
    final range = TimeRange(
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 11, minute: 30));

    final timeSpent = Duration(minutes: 30);
    TimeDivisor divisor = TimeDivisor();

    expect(divisor.divide(range, timeSpent).length, 7);
  });
  // test('Lista de horarios disponíveis', () {
  //   final range = TimeRange(
  //       start: TimeOfDay(hour: 8, minute: 0),
  //       end: TimeOfDay(hour: 11, minute: 0));

  //   final timeSpent = Duration(hours: 1);
  //   TimeDivisor divisor = TimeDivisor();

  //   expect(divisor.divide(range, timeSpent).length, [
  //     timeOfDay(8, 0),
  //     timeOfDay(9, 0),
  //     timeOfDay(10, 0),
  //   ]);
  // });
}
