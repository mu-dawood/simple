import 'package:flutter/material.dart';

class ValidationMessages {
  /// works for any type
  final String Function(dynamic value)? required;

  /// works for String

  final String Function(String value, int max)? stringMaxLength;

  /// works for String

  final String Function(String value, int max)? stringMinLength;

  /// works for String

  final String Function(String? value, int min, int max)? stringMustBeInRange;

  /// works for String

  final String Function(String? value)? stringMustBeDateTime;

  /// works for String

  final String Function(String? value)? stringMustBeTimeOfDay;

  /// works for String and DateTime

  final String Function(dynamic value, DateTime after)? mustBeDateAfter;

  /// works for String and DateTime
  final String Function(dynamic value, DateTime before)? mustBeDateBefore;

  /// works for String and DateTime
  final String Function(dynamic value, DateTime min, DateTime max)?
      mustBeDateBetween;

  /// works for String and TimeOfDay

  final String Function(dynamic value, TimeOfDay after)? mustBeTimeOfDayAfter;

  /// works for String and TimeOfDay

  final String Function(dynamic value, TimeOfDay before)? mustBeTimeOfDayBefore;

  /// works for String and TimeOfDay

  final String Function(dynamic value, TimeOfDay min, TimeOfDay max)?
      mustBeTimeOfDayBetween;

  /// works for String

  final String Function(String value)? mustBeNumber;

  /// works for String
  final String Function(String value)? mustBeInteger;

  /// works for String

  final String Function(String value)? mustBeDouble;

  /// works for String

  final String Function(String value)? mustBeGitHubUser;

  /// works for String

  final String Function(String value)? mustBeRedditUser;

  /// works for String

  final String Function(String value)? mustBeInstagramUser;

  /// works for String

  final String Function(String value)? mustBeLinkedinUser;

  /// works for String

  final String Function(String value)? mustBeTwitterUser;

  /// works for String

  final String Function(String value)? mustBeYoutubeUrl;

  /// works for String

  final String Function(String value)? mustBeFacbookPageOrProfile;

  /// works for String

  final String Function(String value)? mustBeSnapchatProfile;

  /// works for String

  final String Function(String value)? mustUrl;

  /// works for String

  final String Function(String value)? mustEmail;

  /// works for String

  final String Function(String value)? mustBePhone;

  /// works for String

  final String Function(String value)? mustBeHexColor;

  /// works for String

  final String Function(String value)? mustBeLocaleEgyptianPhone;

  /// works for String

  final String Function(String value)? mustBeInternationalEgyptianPhone;

  final String Function(String value)? mustBeLocaleKsaPhone;

  /// works for String

  final String Function(String value)? mustBeInternationalKsaPhone;

  ValidationMessages({
    this.required,
    this.stringMaxLength,
    this.stringMinLength,
    this.stringMustBeInRange,
    this.stringMustBeDateTime,
    this.stringMustBeTimeOfDay,
    this.mustBeDateAfter,
    this.mustBeDateBefore,
    this.mustBeDateBetween,
    this.mustBeTimeOfDayAfter,
    this.mustBeTimeOfDayBefore,
    this.mustBeTimeOfDayBetween,
    this.mustBeNumber,
    this.mustBeInteger,
    this.mustBeDouble,
    this.mustBeGitHubUser,
    this.mustBeRedditUser,
    this.mustBeInstagramUser,
    this.mustBeLinkedinUser,
    this.mustBeTwitterUser,
    this.mustBeYoutubeUrl,
    this.mustBeFacbookPageOrProfile,
    this.mustBeSnapchatProfile,
    this.mustUrl,
    this.mustEmail,
    this.mustBePhone,
    this.mustBeHexColor,
    this.mustBeLocaleEgyptianPhone,
    this.mustBeInternationalEgyptianPhone,
    this.mustBeLocaleKsaPhone,
    this.mustBeInternationalKsaPhone,
  });

  ValidationMessages copyWith({
    String Function(dynamic value)? required,
    String Function(String value, int max)? stringMaxLength,
    String Function(String value, int max)? stringMinLength,
    String Function(String? value, int min, int max)? stringMustBeInRange,
    String Function(String? value)? stringMustBeDateTime,
    String Function(String? value)? stringMustBeTimeOfDay,
    String Function(dynamic value, DateTime after)? mustBeDateAfter,
    String Function(dynamic value, DateTime before)? mustBeDateBefore,
    String Function(dynamic value, TimeOfDay after)? mustBeTimeOfDayAfter,
    String Function(dynamic value, TimeOfDay before)? mustBeTimeOfDayBefore,
    String Function(String value)? mustBeNumber,
    String Function(String value)? mustBeInteger,
    String Function(String value)? mustBeDouble,
    String Function(String value)? mustBeGitHubUser,
    String Function(String value)? mustBeRedditUser,
    String Function(String value)? mustBeInstagramUser,
    String Function(String value)? mustBeLinkedinUser,
    String Function(String value)? mustBeTwitterUser,
    String Function(String value)? mustBeYoutubeUrl,
    String Function(String value)? mustBeFacbookPageOrProfile,
    String Function(String value)? mustBeSnapchatProfile,
    String Function(String value)? mustUrl,
    String Function(String value)? mustEmail,
    String Function(String value)? mustBePhone,
    String Function(String value)? mustBeHexColor,
    String Function(String value)? mustBeLocaleEgyptianPhone,
    String Function(String value)? mustBeInternationalEgyptianPhone,
    String Function(String value)? mustBeLocaleKsaPhone,
    String Function(String value)? mustBeInternationalKsaPhone,
  }) {
    return ValidationMessages(
      required: required ?? this.required,
      stringMaxLength: stringMaxLength ?? this.stringMaxLength,
      stringMinLength: stringMinLength ?? this.stringMinLength,
      stringMustBeInRange: stringMustBeInRange ?? this.stringMustBeInRange,
      stringMustBeDateTime: stringMustBeDateTime ?? this.stringMustBeDateTime,
      stringMustBeTimeOfDay:
          stringMustBeTimeOfDay ?? this.stringMustBeTimeOfDay,
      mustBeDateAfter: mustBeDateAfter ?? this.mustBeDateAfter,
      mustBeDateBefore: mustBeDateBefore ?? this.mustBeDateBefore,
      mustBeTimeOfDayAfter: mustBeTimeOfDayAfter ?? this.mustBeTimeOfDayAfter,
      mustBeTimeOfDayBefore:
          mustBeTimeOfDayBefore ?? this.mustBeTimeOfDayBefore,
      mustBeNumber: mustBeNumber ?? this.mustBeNumber,
      mustBeInteger: mustBeInteger ?? this.mustBeInteger,
      mustBeDouble: mustBeDouble ?? this.mustBeDouble,
      mustBeGitHubUser: mustBeGitHubUser ?? this.mustBeGitHubUser,
      mustBeRedditUser: mustBeRedditUser ?? this.mustBeRedditUser,
      mustBeInstagramUser: mustBeInstagramUser ?? this.mustBeInstagramUser,
      mustBeLinkedinUser: mustBeLinkedinUser ?? this.mustBeLinkedinUser,
      mustBeTwitterUser: mustBeTwitterUser ?? this.mustBeTwitterUser,
      mustBeYoutubeUrl: mustBeYoutubeUrl ?? this.mustBeYoutubeUrl,
      mustBeFacbookPageOrProfile:
          mustBeFacbookPageOrProfile ?? this.mustBeFacbookPageOrProfile,
      mustBeSnapchatProfile:
          mustBeSnapchatProfile ?? this.mustBeSnapchatProfile,
      mustUrl: mustUrl ?? this.mustUrl,
      mustEmail: mustEmail ?? this.mustEmail,
      mustBePhone: mustBePhone ?? this.mustBePhone,
      mustBeHexColor: mustBeHexColor ?? this.mustBeHexColor,
      mustBeLocaleEgyptianPhone:
          mustBeLocaleEgyptianPhone ?? this.mustBeLocaleEgyptianPhone,
      mustBeInternationalEgyptianPhone: mustBeInternationalEgyptianPhone ??
          this.mustBeInternationalEgyptianPhone,
      mustBeLocaleKsaPhone: mustBeLocaleKsaPhone ?? this.mustBeLocaleKsaPhone,
      mustBeInternationalKsaPhone:
          mustBeInternationalKsaPhone ?? this.mustBeInternationalKsaPhone,
    );
  }

  ValidationMessages withDefaults(
      BuildContext context, ValidationMessages values) {
    return ValidationMessages(
      required: required ?? this.required,
      stringMaxLength: stringMaxLength ?? this.stringMaxLength,
      stringMinLength: stringMinLength ?? this.stringMinLength,
      stringMustBeInRange: stringMustBeInRange ?? this.stringMustBeInRange,
      stringMustBeDateTime: stringMustBeDateTime ?? this.stringMustBeDateTime,
      stringMustBeTimeOfDay:
          stringMustBeTimeOfDay ?? this.stringMustBeTimeOfDay,
      mustBeDateAfter: mustBeDateAfter ?? this.mustBeDateAfter,
      mustBeDateBefore: mustBeDateBefore ?? this.mustBeDateBefore,
      mustBeTimeOfDayAfter: mustBeTimeOfDayAfter ?? this.mustBeTimeOfDayAfter,
      mustBeTimeOfDayBefore:
          mustBeTimeOfDayBefore ?? this.mustBeTimeOfDayBefore,
      mustBeNumber: mustBeNumber ?? this.mustBeNumber,
      mustBeInteger: mustBeInteger ?? this.mustBeInteger,
      mustBeDouble: mustBeDouble ?? this.mustBeDouble,
      mustBeGitHubUser: mustBeGitHubUser ?? this.mustBeGitHubUser,
      mustBeRedditUser: mustBeRedditUser ?? this.mustBeRedditUser,
      mustBeInstagramUser: mustBeInstagramUser ?? this.mustBeInstagramUser,
      mustBeLinkedinUser: mustBeLinkedinUser ?? this.mustBeLinkedinUser,
      mustBeTwitterUser: mustBeTwitterUser ?? this.mustBeTwitterUser,
      mustBeYoutubeUrl: mustBeYoutubeUrl ?? this.mustBeYoutubeUrl,
      mustBeFacbookPageOrProfile:
          mustBeFacbookPageOrProfile ?? this.mustBeFacbookPageOrProfile,
      mustBeSnapchatProfile:
          mustBeSnapchatProfile ?? this.mustBeSnapchatProfile,
      mustUrl: mustUrl ?? this.mustUrl,
      mustEmail: mustEmail ?? this.mustEmail,
      mustBePhone: mustBePhone ?? this.mustBePhone,
      mustBeHexColor: mustBeHexColor ?? this.mustBeHexColor,
      mustBeLocaleEgyptianPhone:
          mustBeLocaleEgyptianPhone ?? this.mustBeLocaleEgyptianPhone,
      mustBeInternationalEgyptianPhone: mustBeInternationalEgyptianPhone ??
          this.mustBeInternationalEgyptianPhone,
      mustBeLocaleKsaPhone: mustBeLocaleKsaPhone ?? this.mustBeLocaleKsaPhone,
      mustBeInternationalKsaPhone:
          mustBeInternationalKsaPhone ?? this.mustBeInternationalKsaPhone,
    );
  }
}
