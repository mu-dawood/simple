import 'duration_formatters/duration_formatters.dart';

extension DurationExtentions on Duration {
  /// Format duration to readable string
  /// you can choose one of our formatters `DefaultDurationFormatter` or `ArabicEnglishDurationFormatter`
  /// or you can implement `DurationFormatter` and create your own
  String format({
    int maxParts = 2,
    int secondsToShowNow = 0,
    DurationFormatter formatter = const DefaultDurationFormatter(),
  }) {
    int delta = inSeconds;
    if (delta <= (secondsToShowNow)) return formatter.getNow();
    var years = (delta / (2592000 * 12)).floor();
    delta -= years * (2592000 * 12);
    var months = (delta / 2592000).floor();
    delta -= months * 2592000;
    var days = (delta / 86400).floor();
    delta -= days * 86400;
    var hours = (delta / 3600).floor() % 24;
    delta -= hours * 3600;
    var minutes = (delta / 60).floor() % 60;
    delta -= minutes * 60;
    var seconds = delta % 60;
    var text;
    int parts = 0;
    if (years > 0) {
      if (text == null)
        text = formatter.getYears(years);
      else
        text += formatter.getSeparator() + formatter.getYears(years);
      parts++;
      if (parts >= maxParts) return text;
    }
    if (months > 0) {
      if (text == null)
        text = formatter.getMonths(months);
      else
        text += formatter.getSeparator() + formatter.getMonths(months);
      parts++;
      if (parts >= maxParts) return text;
    }
    if (days > 0) {
      if (text == null)
        text = formatter.getDays(days);
      else
        text += formatter.getSeparator() + formatter.getDays(days);
      parts++;
      if (parts >= maxParts) return text;
    }
    if (hours > 0) {
      if (text == null)
        text = formatter.getHours(hours);
      else
        text += formatter.getSeparator() + formatter.getHours(hours);
      parts++;
      if (parts >= maxParts) return text;
    }
    if (minutes > 0) {
      if (text == null)
        text = formatter.getMinutes(minutes);
      else
        text += formatter.getSeparator() + formatter.getMinutes(minutes);
      parts++;
      if (parts >= maxParts) return text;
    }
    if (seconds > 0) {
      if (text == null)
        text = formatter.getSeconds(seconds);
      else
        text += formatter.getSeparator() + formatter.getSeconds(seconds);
      parts++;
      if (parts >= maxParts) return text;
    }
    return text ?? "";
  }
}
