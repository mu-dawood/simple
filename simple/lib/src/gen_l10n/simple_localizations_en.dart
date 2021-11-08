

import 'package:intl/intl.dart' as intl;
import 'simple_localizations.dart';

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
      other: '$count years',
    );
  }

  @override
  String monthsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one month',
      two: 'two months',
      other: '$count months',
    );
  }

  @override
  String daysPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one day',
      two: 'two days',
      other: '$count days',
    );
  }

  @override
  String weeksPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one week',
      two: 'two weeks',
      other: '$count weeks',
    );
  }

  @override
  String hoursPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one hour',
      two: 'two hours',
      other: '$count hours',
    );
  }

  @override
  String minutesPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one minute',
      two: 'two minutes',
      other: '$count minutes',
    );
  }

  @override
  String socondsPlural(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      one: 'one seconds',
      two: 'two seconds',
      other: '$count seconds',
    );
  }

  @override
  String get now => 'now';

  @override
  String get formatSeperator => ' , ';

  @override
  String get required => 'Excuse me! This field is required';

  @override
  String stringMaxLength(String value, int max) {
    return 'The text must be no longer than $max';
  }

  @override
  String stringMinLength(String value, int min) {
    return 'The length of the text must be at least $min';
  }

  @override
  String stringMustBeInRange(String value, int min, int max) {
    return 'You must enter a text of length not less than $min and not more than $max';
  }

  @override
  String stringMustBeDateTime(String value) {
    return 'You must enter a valid date';
  }

  @override
  String stringMustBeTimeOfDay(String value) {
    return 'You must enter a valid time';
  }

  @override
  String mustBeDateAfter(String value, DateTime after) {
    final intl.DateFormat afterDateFormat = intl.DateFormat.yMMMEd(localeName);
    final String afterString = afterDateFormat.format(after);

    return 'You must enter a later date for $afterString';
  }

  @override
  String mustBeDateBefore(String value, DateTime before) {
    final intl.DateFormat beforeDateFormat = intl.DateFormat.yMMMEd(localeName);
    final String beforeString = beforeDateFormat.format(before);

    return 'You must enter an earlier date for $beforeString';
  }

  @override
  String mustBeTimeOfDayAfter(String value, String after) {
    return 'You must enter a later time to $after';
  }

  @override
  String mustBeTimeOfDayBefore(String value, String before) {
    return 'You must enter an earlier time to $before';
  }

  @override
  String mustBeNumber(String value) {
    return 'You must enter a number';
  }

  @override
  String mustBeInteger(String value) {
    return 'You must enter a non-decimal number';
  }

  @override
  String mustBeDouble(String value) {
    return 'You must enter a decimal number';
  }

  @override
  String mustBeGitHubUser(String value) {
    return 'You must enter a Github account link';
  }

  @override
  String mustBeRedditUser(String value) {
    return 'Reddit account link must be entered';
  }

  @override
  String mustBeInstagramUser(String value) {
    return 'Instagram account link must be entered';
  }

  @override
  String mustBeLinkedinUser(String value) {
    return 'Linkedin account link must be entered';
  }

  @override
  String mustBeTwitterUser(String value) {
    return 'Twitter account link must be entered';
  }

  @override
  String mustBeYoutubeUrl(String value) {
    return 'Youtube link must be entered';
  }

  @override
  String mustBeFacbookPageOrProfile(String value) {
    return 'You must enter a Facbook link';
  }

  @override
  String mustBeSnapchatProfile(String value) {
    return 'You must enter a Snapchat account link';
  }

  @override
  String mustUrl(String value) {
    return 'You must enter a valid link';
  }

  @override
  String mustEmail(String value) {
    return 'You must enter a valid email';
  }

  @override
  String mustBePhone(String value) {
    return 'You must enter a valid phone';
  }

  @override
  String mustBeHexColor(String value) {
    return 'You must enter a correct color such as (#ff0000)';
  }

  @override
  String mustBeLocaleEgyptianPhone(String value) {
    return 'You must enter a local Egyptian number such as (015xxxxxxxx)';
  }

  @override
  String mustBeInternationalEgyptianPhone(String value) {
    return 'You must enter an Egyptian number in the international format such as (2015xxxxxxxx)';
  }

  @override
  String mustBeLocaleKsaPhone(String value) {
    return 'You must enter a local Saudi number such as (05xxxxxxxx)';
  }

  @override
  String mustBeInternationalKsaPhone(String value) {
    return 'You must enter a Saudi number in the international format such as (96605xxxxxxxx)';
  }
}
