import 'package:flutter/material.dart';

extension StringExtensions on String? {
  /// will parse string to time of days
  /// example 19:16 or 07:18 pm
  TimeOfDay? toTimeOfDay() {
    if (this == null) return null;
    var str = this!.toLowerCase();
    var splits = str.replaceAll(RegExp("[^0-9:]"), "").split(":");
    if (splits.length >= 2) {
      var hour = int.tryParse(splits[0]);
      var minute = int.tryParse(splits[1]);
      if (hour != null && minute != null) {
        if (str.contains(RegExp("[^0-9:]"))) {
          if (str.toLowerCase().contains("pm")) hour += 12;
        }
        if (hour == 24) hour = 0;
        return TimeOfDay(hour: hour, minute: minute);
      }
      return null;
    } else
      return null;
  }

  /// will convert from english numbers to arabic numbers
  String? englishToArabicNumbers() {
    return this
        ?.replaceAll("0", "٠")
        .replaceAll("1", "١")
        .replaceAll("2", "٢")
        .replaceAll("3", "٣")
        .replaceAll("4", "٤")
        .replaceAll("5", "٥")
        .replaceAll("6", "٦")
        .replaceAll("7", "٧")
        .replaceAll("8", "٨")
        .replaceAll("9", "٩");
  }

  /// will convert from arabic numbers to english numbers
  String? arabicToEnglishNumbers() {
    return this
        ?.replaceAll("٠", "0")
        .replaceAll("١", "1")
        .replaceAll("٢", "2")
        .replaceAll("٣", "3")
        .replaceAll("٤", "4")
        .replaceAll("٥", "5")
        .replaceAll("٦", "6")
        .replaceAll("٧", "7")
        .replaceAll("٨", "8")
        .replaceAll("٩", "9");
  }

  /// check the string can be double
  bool get isDouble {
    return double.tryParse(this ?? "") != null;
  }

  /// check the string can be timeofDay
  bool get isTimeOfDay {
    return this.toTimeOfDay() != null;
  }

  /// check the string is null or empty or whitespaces
  bool get isNullOrEmptyOrWhiteSpace {
    return this == null || (this ?? "").trim() == "";
  }

  /// check the string is null or empty
  bool get isNullOrEmpty {
    return this == null || this == "";
  }

  bool get isLocaleEgyptianPhone {
    return RegExp(r'^(01|1)([0-9]{9})$').hasMatch(this ?? "");
  }

  bool get isInternationalEgyptianPhone {
    return RegExp(r'^(00201|201|\+201)([0-9]{9})$').hasMatch(this ?? "");
  }

  bool get isLocaleKsaPhone {
    return RegExp(r'^(05)(5|0|3|6|4|9|1|8|7)([0-9]{7})$').hasMatch(this ?? "");
  }

  bool get isInternationalKsaPhone {
    return RegExp(
            r'^(009665|0096605|9665|96605|\+9665|\+96605|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$')
        .hasMatch(this ?? "");
  }

  /// return `true` if the are equals with case matching
  bool equal(String? str) {
    return this == str;
  }

  /// return `true` if the are equals without case matching
  bool equalIgnoreCase(String? str) {
    return this?.toLowerCase() == str?.toLowerCase();
  }

  /// return `Sting` without any spaces
  String? get hardTrim {
    return this?.replaceAll(' ', '');
  }

  /// `queen`  will return ['q','u','e','e','n']
  List<String> get toChars {
    final charsList = <String>[];
    for (final char in charsList) {
      charsList.add(char);
    }
    return charsList;
  }

  /// return true` if stating is valid DateTime format
  bool get isValidDateFormat {
    try {
      DateTime.parse(this!);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// convert `String` to `DateTime` if is possible
  /// else will throw the standard exception
  DateTime? toDate() {
    if (this != null) return DateTime.tryParse(this!);
    return null;
  }
}
