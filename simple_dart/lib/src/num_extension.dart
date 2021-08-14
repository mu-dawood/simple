import 'package:intl/intl.dart';

extension NumExtensions on num? {
  String format(NumberFormat format) {
    if (this == null) return '';
    return format.format(this);
  }

  String currency({
    String? locale,
    String? name,
    String? symbol,
    int? decimalDigits,
    String? customPattern,
  }) {
    if (this == null) return '';
    return NumberFormat.currency(
      locale: locale,
      name: name,
      symbol: symbol,
      decimalDigits: decimalDigits,
      customPattern: customPattern,
    ).format(this!);
  }

  String simpleCurrency({
    String? locale,
    String? name,
    int? decimalDigits,
  }) {
    if (this == null) return '';
    return NumberFormat.simpleCurrency(
      locale: locale,
      name: name,
      decimalDigits: decimalDigits,
    ).format(this!);
  }
}
