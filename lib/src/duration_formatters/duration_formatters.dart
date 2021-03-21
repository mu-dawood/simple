library duration_formatters;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../boolean_extensions.dart';
part 'default_formatter.dart';
part 'arabic_english_formatter.dart';

abstract class DurationFormatter {
  String getSeparator();
  String getYears(int years);
  String getMonths(int months);

  String getDays(int days);

  String getHours(int hours);

  String getMinutes(int minutes);

  String getSeconds(int seconds);

  String getNow();
}
