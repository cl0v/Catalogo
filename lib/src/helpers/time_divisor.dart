import 'package:flutter/material.dart';
import 'package:nutri/src/models/time_range.dart';

class TimeDivisor {
  List<TimeOfDay> divide(TimeRange range, Duration spent) {
    final h = range.end.hour - range.start.hour; // 11 - 8
    final m = range.end.minute - range.start.minute; // 0 - 0
    final t = h * 60 + m; //
    final r = (t / spent.inMinutes).round();
    // final rs = t % spent.inMinutes;
    return List.filled(r, timeOfDay(8, 0));
  }
}
