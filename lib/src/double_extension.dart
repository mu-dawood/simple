extension DoubleExtentions on double? {
  /// Formating double
  /// 15.5 will  be 15.50
  /// 15.00 will be 15
  String format([String? suffix]) {
    if (this == null) return "";
    var formated =
        this!.toStringAsFixed(this!.truncateToDouble() == this ? 0 : 2);
    if (suffix != null) return "$formated$suffix";
    return formated;
  }
}
