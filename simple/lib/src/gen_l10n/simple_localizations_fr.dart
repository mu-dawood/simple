

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

  @override
  String get required => 'Excuse-moi! Ce champ est obligatoire';

  @override
  String stringMaxLength(String value, int max) {
    return 'Le texte ne doit pas dépasser $max';
  }

  @override
  String stringMinLength(String value, int min) {
    return 'La longueur du texte doit être d\'au moins $min';
  }

  @override
  String stringMustBeInRange(String value, int min, int max) {
    return 'Vous devez saisir un texte d\'une longueur d\'au moins $min et d\'au plus $max';
  }

  @override
  String stringMustBeDateTime(String value) {
    return 'Vous devez entrer une date valide';
  }

  @override
  String stringMustBeTimeOfDay(String value) {
    return 'Vous devez entrer une heure valide';
  }

  @override
  String mustBeDateAfter(String value, DateTime after) {
    final intl.DateFormat afterDateFormat = intl.DateFormat.yMMMEd(localeName);
    final String afterString = afterDateFormat.format(after);

    return 'Vous devez entrer une date ultérieure pour $afterString';
  }

  @override
  String mustBeDateBefore(String value, DateTime before) {
    final intl.DateFormat beforeDateFormat = intl.DateFormat.yMMMEd(localeName);
    final String beforeString = beforeDateFormat.format(before);

    return 'Vous devez entrer une date antérieure pour $beforeString';
  }

  @override
  String mustBeTimeOfDayAfter(String value, String after) {
    return 'Vous devez entrer ultérieurement pour $after';
  }

  @override
  String mustBeTimeOfDayBefore(String value, String before) {
    return 'Vous devez entrer une date antérieure pour $before';
  }

  @override
  String mustBeNumber(String value) {
    return 'Vous devez entrer un numéro';
  }

  @override
  String mustBeInteger(String value) {
    return 'Vous devez entrer un nombre non décimal';
  }

  @override
  String mustBeDouble(String value) {
    return 'Vous devez entrer un nombre décimal';
  }

  @override
  String mustBeGitHubUser(String value) {
    return 'Vous devez saisir un lien de compte Github';
  }

  @override
  String mustBeRedditUser(String value) {
    return 'Le lien du compte Reddit doit être saisi';
  }

  @override
  String mustBeInstagramUser(String value) {
    return 'Le lien du compte Instagram doit être saisi';
  }

  @override
  String mustBeLinkedinUser(String value) {
    return 'Le lien du compte Linkedin doit être saisi';
  }

  @override
  String mustBeTwitterUser(String value) {
    return 'Le lien du compte Twitter doit être saisi';
  }

  @override
  String mustBeYoutubeUrl(String value) {
    return 'Le lien Youtube doit être saisi';
  }

  @override
  String mustBeFacbookPageOrProfile(String value) {
    return 'Vous devez saisir un lien Facebook';
  }

  @override
  String mustBeSnapchatProfile(String value) {
    return 'Vous devez saisir un lien de compte Snapchat';
  }

  @override
  String mustUrl(String value) {
    return 'Vous devez saisir un lien valide';
  }

  @override
  String mustEmail(String value) {
    return 'Vous devez entrer un e-mail valide';
  }

  @override
  String mustBePhone(String value) {
    return 'Vous devez entrer un téléphone valide';
  }

  @override
  String mustBeHexColor(String value) {
    return 'Vous devez entrer une couleur correcte telle que (#ff0000)';
  }

  @override
  String mustBeLocaleEgyptianPhone(String value) {
    return 'Vous devez entrer un numéro égyptien local tel que (015xxxxxxxx)';
  }

  @override
  String mustBeInternationalEgyptianPhone(String value) {
    return 'Vous devez entrer un numéro égyptien au format international tel que (2015xxxxxxxx)';
  }

  @override
  String mustBeLocaleKsaPhone(String value) {
    return 'Vous devez entrer un numéro saoudien local tel que (05xxxxxxxx)';
  }

  @override
  String mustBeInternationalKsaPhone(String value) {
    return 'Vous devez entrer un numéro saoudien au format international tel que (96605xxxxxxxx)';
  }
}
