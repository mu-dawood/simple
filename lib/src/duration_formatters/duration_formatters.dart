library duration_formatters;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../gen_l10n/simple_localizations.dart';
import 'package:simple/src/gen_l10n/simple_localizations.dart';
part 'default_formatter.dart';
part 'translated_formatter.dart';

abstract class DurationFormatter {
  String getSeparator();
  String getYears(int years);
  String getMonths(int months);

  String getDays(int days);
  String getWeeks(int weeks);

  String getHours(int hours);

  String getMinutes(int minutes);

  String getSeconds(int seconds);

  String getNow();
}
