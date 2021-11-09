import 'package:flutter/material.dart';
import 'package:simple/src/gen_l10n/simple_localizations.dart';
import 'package:simple/src/gen_l10n/simple_localizations_ar.dart';
import 'package:simple_dart/simple_dart.dart';

import '../string_extensions.dart';

part 'field_validator.dart';
part 'validatation_messages.dart';
part 'validation_messages_wrapper.dart';

extension ValidationExtensions on BuildContext {
  DefaultValidationMessages get messages => DefaultValidationMessages.of(this);

  /// Valiadate any form field
  FieldValidator required() {
    fn(dynamic value) {
      if (value == null) return messages.required(value);
      if (value is String && (value).trim().isEmpty)
        return messages.required(value);
    }

    return FieldValidator._(fn);
  }

  FieldValidator<T> _validateIfExists<T>(String? Function(T v) validator) {
    fn(T? value) {
      if (value == null || value.toString().trim().isEmpty) return null;
      return validator(value);
    }

    return FieldValidator._(fn);
  }

  ///Valiadate TextFormField
  FieldValidator<String> maxLength(int max) {
    assert(max > 0);
    return _validateIfExists<String>((v) {
      if (v.length > max) return messages.stringMaxLength(v, max);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> minLength(int min) {
    assert(min >= 0);
    return _validateIfExists<String>((v) {
      if (v.length < min) return messages.stringMinLength(v, min);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> lengthInRange(int min, int max) {
    assert(min >= 0);
    assert(max > min);
    return _validateIfExists<String>((v) {
      if (v.length < min || v.length > max)
        return messages.stringMustBeInRange(v, min, max);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> dateTime() {
    return _validateIfExists<String>((v) {
      if (!v.isDateTime) return messages.stringMustBeDateTime(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> timeOfDay() {
    return _validateIfExists<String>((v) {
      if (!v.isTimeOfDay) return messages.stringMustBeTimeOfDay(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> dateAfter(DateTime after, [bool canBeSame = false]) {
    return _validateIfExists<String>((v) {
      var _date = v.toDate();
      if (_date == null) return messages.stringMustBeDateTime(v);
      if (canBeSame && _date.isAtSameMomentAs(after)) return null;
      if (!_date.isAfter(after)) return messages.mustBeDateAfter(_date, after);
    });
  }

  /// Valiadate FormFields that has type of DateTime
  FieldValidator<DateTime> isDateAfter(DateTime after,
      [bool canBeSame = false]) {
    return _validateIfExists<DateTime>((v) {
      if (canBeSame && v.isAtSameMomentAs(after)) return null;
      if (!v.isAfter(after)) return messages.mustBeDateAfter(v, after);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> dateBefore(DateTime before, [bool canBeSame = false]) {
    return _validateIfExists<String>((v) {
      var _date = v.toDate();
      if (_date == null) return messages.stringMustBeDateTime(v);
      if (canBeSame && _date.isAtSameMomentAs(before)) return null;
      if (!_date.isBefore(before))
        return messages.mustBeDateBefore(_date, before);
    });
  }

  /// Valiadate FormFields that has type of DateTime
  FieldValidator<DateTime> isDateBefore(DateTime before,
      [bool canBeSame = false]) {
    return _validateIfExists<DateTime>((v) {
      if (canBeSame && v.isAtSameMomentAs(before)) return null;
      if (!v.isBefore(before)) return messages.mustBeDateBefore(v, before);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> dateBetween(DateTime min, DateTime max) {
    assert(min.isBefore(max));
    return _validateIfExists<String>((v) {
      var _date = v.toDate();
      if (_date == null) return messages.stringMustBeDateTime(v);
      if (_date.isBefore(min) || _date.isAfter(max))
        return messages.mustBeDateBetween(_date, min, max);
    });
  }

  /// Valiadate FormFields that has type of DateTime
  FieldValidator<DateTime> isDateBetween(DateTime min, DateTime max) {
    assert(min.isBefore(max));
    return _validateIfExists<DateTime>((v) {
      if (v.isBefore(min) || v.isAfter(max))
        return messages.mustBeDateBetween(v, min, max);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> timeOfDayAfter(TimeOfDay after,
      [bool canBeSame = false]) {
    return _validateIfExists<String>((v) {
      var time = v.toTimeOfDay();
      if (time == null) return messages.stringMustBeTimeOfDay(v);
      var _time = time.hour * 60 + time.minute;
      var _after = after.hour * 60 + after.minute;
      if (canBeSame && _time == _after) return null;
      if (_time < _after) return messages.mustBeTimeOfDayAfter(time, after);
    });
  }

  /// Valiadate FormFields that has type of TimeOfDay
  FieldValidator<TimeOfDay> isTimeOfDayAfter(TimeOfDay after,
      [bool canBeSame = false]) {
    return _validateIfExists<TimeOfDay>((v) {
      var _time = v.hour * 60 + v.minute;
      var _after = after.hour * 60 + after.minute;
      if (canBeSame && _time == _after) return null;
      if (_time < _after) return messages.mustBeTimeOfDayAfter(v, after);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> timeOfDayBefore(TimeOfDay before,
      [bool canBeSame = false]) {
    return _validateIfExists<String>((v) {
      var time = v.toTimeOfDay();
      if (time == null) return messages.stringMustBeTimeOfDay(v);
      var _time = time.hour * 60 + time.minute;
      var _before = before.hour * 60 + before.minute;
      if (canBeSame && _time == _before) return null;
      if (_time > _before) return messages.mustBeTimeOfDayBefore(time, before);
    });
  }

  /// Valiadate FormFields that has type of TimeOfDay
  FieldValidator<TimeOfDay> isTimeOfDayBefore(TimeOfDay before,
      [bool canBeSame = false]) {
    return _validateIfExists<TimeOfDay>((v) {
      var _time = v.hour * 60 + v.minute;
      var _before = before.hour * 60 + before.minute;
      if (canBeSame && _time == _before) return null;
      if (_time > _before) return messages.mustBeTimeOfDayBefore(v, before);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> timeOfDayBetween(TimeOfDay min, TimeOfDay max) {
    return _validateIfExists<String>((v) {
      var time = v.toTimeOfDay();
      if (time == null) return messages.stringMustBeTimeOfDay(v);
      var _time = time.hour * 60 + time.minute;
      var _min = min.hour * 60 + min.minute;
      var _max = max.hour * 60 + max.minute;
      if (_time < _min || _time > _max)
        return messages.mustBeTimeOfDayBetween(time, min, max);
    });
  }

  /// Valiadate FormFields that has type of TimeOfDay
  FieldValidator<TimeOfDay> isTimeOfDayBetween(TimeOfDay min, TimeOfDay max) {
    return _validateIfExists<TimeOfDay>((v) {
      var _time = v.hour * 60 + v.minute;
      var _min = min.hour * 60 + min.minute;
      var _max = max.hour * 60 + max.minute;
      if (_time < _min || _time > _max)
        return messages.mustBeTimeOfDayBetween(v, min, max);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> number() {
    return _validateIfExists<String>((v) {
      var n = double.tryParse(v);
      if (n == null) return messages.mustBeNumber(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> integer() {
    return _validateIfExists<String>((v) {
      var n = int.tryParse(v);
      if (n == null) return messages.mustBeInteger(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> decimal() {
    return _validateIfExists<String>((v) {
      var n = double.tryParse(v);
      if (n == null || !v.contains('.')) return messages.mustBeDecimal(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> gitHubUser() {
    return _validateIfExists<String>((v) {
      if (!v.isGitHubUser) return messages.mustBeGitHubUser(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> redditUser() {
    return _validateIfExists<String>((v) {
      if (!v.isRedditUser) return messages.mustBeRedditUser(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> instagramUser() {
    return _validateIfExists<String>((v) {
      if (!v.isInstagramUser) return messages.mustBeInstagramUser(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> linkedinUser() {
    return _validateIfExists<String>((v) {
      if (!v.isLinkedinUser) return messages.mustBeLinkedinUser(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> twitterUser() {
    return _validateIfExists<String>((v) {
      if (!v.isTwitterUser) return messages.mustBeTwitterUser(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> youtubeUrl() {
    return _validateIfExists<String>((v) {
      if (!v.isYoutubeUrl) return messages.mustBeYoutubeUrl(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> facbookPageOrProfile() {
    return _validateIfExists<String>((v) {
      if (!v.isFacbookPageOrProfile)
        return messages.mustBeFacbookPageOrProfile(v);
    });
  }

  /// Valiadate TextFormField
  FieldValidator<String> facbookPageOrProfile() {
    return _validateIfExists<String>((v) {
      if (!v.isFacbookPageOrProfile)
        return messages.mustBeFacbookPageOrProfile(v);
    });
  }

  // /// works for String

  // final String Function(String value)? mustBeFacbookPageOrProfile;

  // /// works for String

  // final String Function(String value)? mustBeSnapchatProfile;

  // /// works for String

  // final String Function(String value)? mustUrl;

  // /// works for String

  // final String Function(String value)? mustEmail;

  // /// works for String

  // final String Function(String value)? mustBePhone;

  // /// works for String

  // final String Function(String value)? mustBeHexColor;

  // /// works for String

  // final String Function(String value)? mustBeLocaleEgyptianPhone;

  // /// works for String

  // final String Function(String value)? mustBeInternationalEgyptianPhone;

  // final String Function(String value)? mustBeLocaleKsaPhone;

  // /// works for String

  // final String Function(String value)? mustBeInternationalKsaPhone;
}
