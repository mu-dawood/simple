import 'package:flutter/material.dart';

extension FlutterStringExtensions on String? {
  /// will parse string to time of days
  /// example 19:16 or 07:18 pm
  TimeOfDay? toTimeOfDay() {
    if (this == null) return null;
    var str = this!.toLowerCase();
    var splits = str.replaceAll(RegExp('[^0-9:]'), '').split(':');
    if (splits.length >= 2) {
      var hour = int.tryParse(splits[0]);
      var minute = int.tryParse(splits[1]);
      if (hour != null && minute != null) {
        if (str.contains(RegExp('[^0-9:]'))) {
          if (str.toLowerCase().contains('pm')) hour += 12;
        }
        if (hour == 24) hour = 0;
        return TimeOfDay(hour: hour, minute: minute);
      }
      return null;
    } else {
      return null;
    }
  }

  /// check the string can be timeofDay
  bool get isTimeOfDay {
    return toTimeOfDay() != null;
  }
}
