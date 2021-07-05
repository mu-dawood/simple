

import 'package:intl/intl.dart' as intl;
import 'simple_localizations.dart';

/// The translations for French (`fr`).
class SimpleLocalizationsFr extends SimpleLocalizations {
  SimpleLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String yearsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'un ans',
      two: 'deux ans',
      few: '$count années',
      other: '$count années',
    );
  }

  @override
  String monthsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'un mois',
      two: 'deux mois',
      few: '$count mois',
      other: '$count mois',
    );
  }

  @override
  String daysPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'un seul jour',
      two: 'deux jours',
      few: '$count jours',
      other: '$count jours',
    );
  }

  @override
  String weeksPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'une semaine',
      two: 'deux semaines',
      few: '$count semaines',
      other: '$count semaines',
    );
  }

  @override
  String hoursPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'une heure',
      two: 'deux heures',
      few: '$count heures',
      other: '$count heures',
    );
  }

  @override
  String minutesPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'une minute',
      two: 'deux minutes',
      few: '$count minutes',
      other: '$count minutes',
    );
  }

  @override
  String socondsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'une seconde',
      two: 'deux secondes',
      few: '$count secondes',
      other: '$count secondes',
    );
  }

  @override
  String get now => 'à présent';

  @override
  String get formatSeperator => ' ، ';
}
