
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'simple_localizations.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for English (`en`).
class SimpleLocalizationsEn extends SimpleLocalizations {
  SimpleLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String yearsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one year',
      two: 'Two years',
      other: '${count} years',
    );
  }

  @override
  String monthsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one month',
      two: 'two months',
      other: '${count} months',
    );
  }

  @override
  String daysPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one day',
      two: 'two days',
      other: '${count} days',
    );
  }

  @override
  String weeksPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one week',
      two: 'two weeks',
      other: '${count} weeks',
    );
  }

  @override
  String hoursPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one hour',
      two: 'two hours',
      other: '${count} hours',
    );
  }

  @override
  String minutesPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one minute',
      two: 'two minutes',
      other: '${count} minutes',
    );
  }

  @override
  String socondsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one seconds',
      two: 'two seconds',
      other: '${count} seconds',
    );
  }

  @override
  String get now => 'now';

  @override
  String get formatSeperator => ' and ';
}
