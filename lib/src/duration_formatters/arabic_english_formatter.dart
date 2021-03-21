part of duration_formatters;

class ArabicEnglishDurationFormatter implements DurationFormatter {
  final BuildContext context;

  const ArabicEnglishDurationFormatter(this.context);
  String getSeparator() {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    return isArabic.onTrue(" و ", " & ")!;
  }

  String getYears(int years) {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    if (years == 0)
      return "";
    else if (years == 1)
      return isArabic.onTrue("عام واحد", "one year")!;
    else if (years == 2)
      return isArabic.onTrue("عامين", "two years")!;
    else if (years >= 3 && years <= 10)
      return isArabic.onTrue("$years أعوام", "$years years")!;
    else
      return isArabic.onTrue("$years عام", "$years years")!;
  }

  String getMonths(int months) {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    if (months == 0)
      return "";
    else if (months == 1)
      return isArabic.onTrue("شهر واحد", "one month")!;
    else if (months == 2)
      return isArabic.onTrue("شهرين", "two months")!;
    else if (months >= 3 && months <= 10)
      return isArabic.onTrue("$months أشهر", "$months months")!;
    else
      return isArabic.onTrue("$months شهر", "$months months")!;
  }

  String getDays(int days) {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    if (days == 0)
      return "";
    else if (days == 1)
      return isArabic.onTrue("يوم واحد", "one day")!;
    else if (days == 2)
      return isArabic.onTrue("يومين", "two days")!;
    else if (days >= 3 && days <= 10)
      return isArabic.onTrue("$days أيام", "$days days")!;
    else
      return isArabic.onTrue("$days يوم", "$days days")!;
  }

  String getHours(int hours) {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    if (hours == 0)
      return "";
    else if (hours == 1)
      return isArabic.onTrue("ساعة واحدة", "one hour")!;
    else if (hours == 2)
      return isArabic.onTrue("ساعتين", "two hours")!;
    else if (hours >= 3 && hours <= 10)
      return isArabic.onTrue("$hours ساعات", "$hours hours")!;
    else
      return isArabic.onTrue("$hours ساعة", "$hours hours")!;
  }

  String getMinutes(int minutes) {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    if (minutes == 0)
      return "";
    else if (minutes == 1)
      return isArabic.onTrue("دقيقة واحدة", "one minute")!;
    else if (minutes == 2)
      return isArabic.onTrue("دقيقتين", "two minutes")!;
    else if (minutes >= 3 && minutes <= 10)
      return isArabic.onTrue("$minutes دقائق", "$minutes minutes")!;
    else
      return isArabic.onTrue("$minutes دقيقة", "$minutes minutes")!;
  }

  String getSeconds(int seconds) {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    if (seconds == 0)
      return "";
    else if (seconds == 1)
      return isArabic.onTrue("ثانية واحدة", "one second")!;
    else if (seconds == 2)
      return isArabic.onTrue("ثانيتين", "two seconds")!;
    else if (seconds >= 3 && seconds <= 10)
      return isArabic.onTrue("$seconds ثوان", "$seconds seconds")!;
    else
      return isArabic.onTrue("$seconds ثانية", "$seconds seconds")!;
  }

  String getNow() {
    var isArabic = Localizations.localeOf(context).languageCode.contains("ar");
    return isArabic.onTrue("الأن", "Now")!;
  }
}
