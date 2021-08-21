import 'package:flutter/material.dart';

TimeOfDay timeOfDay(int hours, int minutes) =>
    TimeOfDay(hour: hours, minute: minutes);


class TimeRange {
  TimeOfDay start;
  TimeOfDay end;
  TimeRange({
    required this.start,
    required this.end,
  });

  Map<String, dynamic> toMap() {
    return {
      'start': start.toMap(),
      'end': end.toMap(),
    };
  }

  factory TimeRange.fromMap(Map<String, dynamic> map) {
    return TimeRange(
      start: TimeOfDaySerializer.fromMap(map['start']),
      end: TimeOfDaySerializer.fromMap(map['end']),
    );
  }

  @override
  String toString() => 'TimeRange(from: $start, to: $end)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TimeRange && other.start == start && other.end == end;
  }

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}

extension TimeOfDaySerializer on TimeOfDay {
  Map<String, dynamic> toMap() {
    return {
      'hour': hour,
      'minute': minute,
    };
  }

  static TimeOfDay fromMap(Map<String, dynamic> map) {
    return TimeOfDay(hour: map['hour'], minute: map['minute']);
  }
}
