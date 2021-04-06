part of duration_extension;

/// ```
///  Duration(seconds:100).format(
///    formatter: TranslatedDurationFormatter(context),
///  )
/// ```
class TranslatedDurationFormatter implements DurationFormatter {
  final BuildContext context;

  const TranslatedDurationFormatter(this.context);
  String getSeparator() {
    return SimpleLocalizations.of(context)!.formatSeperator;
  }

  String getYears(int years) {
    if (years == 0)
      return "";
    else
      return SimpleLocalizations.of(context)!.yearsPlural(years);
  }

  String getMonths(int months) {
    if (months == 0)
      return "";
    else
      return SimpleLocalizations.of(context)!.monthsPlural(months);
  }

  String getDays(int days) {
    if (days == 0)
      return "";
    else
      return SimpleLocalizations.of(context)!.daysPlural(days);
  }

  String getWeeks(int weeks) {
    if (weeks == 0)
      return "";
    else
      return SimpleLocalizations.of(context)!.weeksPlural(weeks);
  }

  String getHours(int hours) {
    if (hours == 0)
      return "";
    else
      return SimpleLocalizations.of(context)!.hoursPlural(hours);
  }

  String getMinutes(int minutes) {
    if (minutes == 0)
      return "";
    else
      return SimpleLocalizations.of(context)!.minutesPlural(minutes);
  }

  String getSeconds(int seconds) {
    if (seconds == 0)
      return "";
    else
      return SimpleLocalizations.of(context)!.socondsPlural(seconds);
  }

  String getNow() {
    return SimpleLocalizations.of(context)!.now;
  }
}
