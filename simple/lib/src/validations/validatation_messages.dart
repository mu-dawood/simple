part of 'validations.dart';

class ValidationMessages {
  /// works for any type
  final String? required;

  /// works for String

  final String Function(String value, int max)? stringMaxLength;

  /// works for String

  final String Function(String value, int max)? stringMinLength;

  /// works for String

  final String Function(String value, int min, int max)? stringMustBeInRange;

  /// works for String

  final String Function(String value)? stringMustBeDateTime;

  /// works for String

  final String Function(String value)? stringMustBeTimeOfDay;

  /// works for String and DateTime

  final String Function(DateTime value, DateTime after)? mustBeDateAfter;

  /// works for String and DateTime
  final String Function(DateTime value, DateTime before)? mustBeDateBefore;

  /// works for String and DateTime
  final String Function(DateTime value, DateTime min, DateTime max)? mustBeDateBetween;

  /// works for String and TimeOfDay

  final String Function(TimeOfDay value, TimeOfDay after)? mustBeTimeOfDayAfter;

  /// works for String and TimeOfDay

  final String Function(TimeOfDay value, TimeOfDay before)? mustBeTimeOfDayBefore;

  /// works for String and TimeOfDay

  final String Function(TimeOfDay value, TimeOfDay min, TimeOfDay max)? mustBeTimeOfDayBetween;

  /// works for String

  final String Function(String value)? mustBeNumber;

  /// works for String
  final String Function(String value)? mustBeInteger;

  /// works for String

  final String Function(String value)? mustBeDecimal;

  /// works for String

  final String Function(String value)? mustBeGithubUrl;

  /// works for String

  final String Function(String value)? mustBeRedditUrl;

  /// works for String

  final String Function(String value)? mustBeInstagramUrl;

  /// works for String

  final String Function(String value)? mustBeLinkedinProfile;

  /// works for String

  final String Function(String value)? mustBeTwitterUser;

  /// works for String

  final String Function(String value)? mustBeYoutubeVideoUrl;

  /// works for String

  final String Function(String value)? mustBeFacbookPageOrProfile;

  /// works for String

  final String Function(String value)? mustBeSnapchatProfile;

  /// works for String

  final String Function(String value)? mustBeUrl;

  /// works for String

  final String Function(String value)? mustBeEmail;

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
    this.mustBeDecimal,
    this.mustBeGithubUrl,
    this.mustBeRedditUrl,
    this.mustBeInstagramUrl,
    this.mustBeLinkedinProfile,
    this.mustBeTwitterUser,
    this.mustBeYoutubeVideoUrl,
    this.mustBeFacbookPageOrProfile,
    this.mustBeSnapchatProfile,
    this.mustBeUrl,
    this.mustBeEmail,
    this.mustBeHexColor,
    this.mustBeLocaleEgyptianPhone,
    this.mustBeInternationalEgyptianPhone,
    this.mustBeLocaleKsaPhone,
    this.mustBeInternationalKsaPhone,
  });

  ValidationMessages withOther(ValidationMessages? values) {
    return ValidationMessages(
      mustBeDateBetween: values?.mustBeDateBetween ?? this.mustBeDateBetween,
      mustBeTimeOfDayBetween: values?.mustBeTimeOfDayBetween ?? this.mustBeTimeOfDayBetween,
      required: values?.required ?? this.required,
      stringMaxLength: values?.stringMaxLength ?? this.stringMaxLength,
      stringMinLength: values?.stringMinLength ?? this.stringMinLength,
      stringMustBeInRange: values?.stringMustBeInRange ?? this.stringMustBeInRange,
      stringMustBeDateTime: values?.stringMustBeDateTime ?? this.stringMustBeDateTime,
      stringMustBeTimeOfDay: values?.stringMustBeTimeOfDay ?? this.stringMustBeTimeOfDay,
      mustBeDateAfter: values?.mustBeDateAfter ?? this.mustBeDateAfter,
      mustBeDateBefore: values?.mustBeDateBefore ?? this.mustBeDateBefore,
      mustBeTimeOfDayAfter: values?.mustBeTimeOfDayAfter ?? this.mustBeTimeOfDayAfter,
      mustBeTimeOfDayBefore: values?.mustBeTimeOfDayBefore ?? this.mustBeTimeOfDayBefore,
      mustBeNumber: values?.mustBeNumber ?? this.mustBeNumber,
      mustBeInteger: values?.mustBeInteger ?? this.mustBeInteger,
      mustBeDecimal: values?.mustBeDecimal ?? this.mustBeDecimal,
      mustBeGithubUrl: values?.mustBeGithubUrl ?? this.mustBeGithubUrl,
      mustBeRedditUrl: values?.mustBeRedditUrl ?? this.mustBeRedditUrl,
      mustBeInstagramUrl: values?.mustBeInstagramUrl ?? this.mustBeInstagramUrl,
      mustBeLinkedinProfile: values?.mustBeLinkedinProfile ?? this.mustBeLinkedinProfile,
      mustBeTwitterUser: values?.mustBeTwitterUser ?? this.mustBeTwitterUser,
      mustBeYoutubeVideoUrl: values?.mustBeYoutubeVideoUrl ?? this.mustBeYoutubeVideoUrl,
      mustBeFacbookPageOrProfile: values?.mustBeFacbookPageOrProfile ?? this.mustBeFacbookPageOrProfile,
      mustBeSnapchatProfile: values?.mustBeSnapchatProfile ?? this.mustBeSnapchatProfile,
      mustBeUrl: values?.mustBeUrl ?? this.mustBeUrl,
      mustBeEmail: values?.mustBeEmail ?? this.mustBeEmail,
      mustBeHexColor: values?.mustBeHexColor ?? this.mustBeHexColor,
      mustBeLocaleEgyptianPhone: values?.mustBeLocaleEgyptianPhone ?? this.mustBeLocaleEgyptianPhone,
      mustBeInternationalEgyptianPhone: values?.mustBeInternationalEgyptianPhone ?? this.mustBeInternationalEgyptianPhone,
      mustBeLocaleKsaPhone: values?.mustBeLocaleKsaPhone ?? this.mustBeLocaleKsaPhone,
      mustBeInternationalKsaPhone: values?.mustBeInternationalKsaPhone ?? this.mustBeInternationalKsaPhone,
    );
  }
}

class DefaultValidationMessages extends ValidationMessages {
  /// works for any type
  final String? required;

  /// works for String

  final String Function(String value, int max) stringMaxLength;

  /// works for String

  final String Function(String value, int max) stringMinLength;

  /// works for String

  final String Function(String value, int min, int max) stringMustBeInRange;

  /// works for String

  final String Function(String value) stringMustBeDateTime;

  /// works for String

  final String Function(String value) stringMustBeTimeOfDay;

  /// works for String and DateTime

  final String Function(DateTime value, DateTime after) mustBeDateAfter;

  /// works for String and DateTime
  final String Function(DateTime value, DateTime before) mustBeDateBefore;

  /// works for String and DateTime
  final String Function(DateTime value, DateTime min, DateTime max) mustBeDateBetween;

  /// works for String and TimeOfDay

  final String Function(TimeOfDay value, TimeOfDay after) mustBeTimeOfDayAfter;

  /// works for String and TimeOfDay

  final String Function(TimeOfDay value, TimeOfDay before) mustBeTimeOfDayBefore;

  /// works for String and TimeOfDay

  final String Function(TimeOfDay value, TimeOfDay min, TimeOfDay max) mustBeTimeOfDayBetween;

  /// works for String

  final String Function(String value) mustBeNumber;

  /// works for String
  final String Function(String value) mustBeInteger;

  /// works for String

  final String Function(String value) mustBeDecimal;

  /// works for String

  final String Function(String value) mustBeGithubUrl;

  /// works for String

  final String Function(String value) mustBeRedditUrl;

  /// works for String

  final String Function(String value) mustBeInstagramUrl;

  /// works for String

  final String Function(String value) mustBeLinkedinProfile;

  /// works for String

  final String Function(String value) mustBeTwitterUser;

  /// works for String

  final String Function(String value) mustBeYoutubeVideoUrl;

  /// works for String

  final String Function(String value) mustBeFacbookPageOrProfile;

  /// works for String

  final String Function(String value) mustBeSnapchatProfile;

  /// works for String

  final String Function(String value) mustBeUrl;

  /// works for String

  final String Function(String value) mustBeEmail;

  /// works for String

  final String Function(String value) mustBeHexColor;

  /// works for String

  final String Function(String value) mustBeLocaleEgyptianPhone;

  /// works for String

  final String Function(String value) mustBeInternationalEgyptianPhone;

  final String Function(String value) mustBeLocaleKsaPhone;

  /// works for String

  final String Function(String value) mustBeInternationalKsaPhone;

  DefaultValidationMessages({
    required this.required,
    required this.stringMaxLength,
    required this.stringMinLength,
    required this.stringMustBeInRange,
    required this.stringMustBeDateTime,
    required this.stringMustBeTimeOfDay,
    required this.mustBeDateAfter,
    required this.mustBeDateBefore,
    required this.mustBeDateBetween,
    required this.mustBeTimeOfDayAfter,
    required this.mustBeTimeOfDayBefore,
    required this.mustBeTimeOfDayBetween,
    required this.mustBeNumber,
    required this.mustBeInteger,
    required this.mustBeDecimal,
    required this.mustBeGithubUrl,
    required this.mustBeRedditUrl,
    required this.mustBeInstagramUrl,
    required this.mustBeLinkedinProfile,
    required this.mustBeTwitterUser,
    required this.mustBeYoutubeVideoUrl,
    required this.mustBeFacbookPageOrProfile,
    required this.mustBeSnapchatProfile,
    required this.mustBeUrl,
    required this.mustBeEmail,
    required this.mustBeHexColor,
    required this.mustBeLocaleEgyptianPhone,
    required this.mustBeInternationalEgyptianPhone,
    required this.mustBeLocaleKsaPhone,
    required this.mustBeInternationalKsaPhone,
  });

  factory DefaultValidationMessages.of(BuildContext context) {
    var values = ValidationMessagesConfig.of(context);
    var tr = SimpleLocalizations.of(context) ?? SimpleLocalizationsAr();
    return DefaultValidationMessages(
      mustBeDateBetween: values?.mustBeDateBetween ?? tr.mustBeDateBetween,
      mustBeTimeOfDayBetween: values?.mustBeTimeOfDayBetween ?? tr.mustBeTimeOfDayBetween,
      required: values?.required ?? tr.required,
      stringMaxLength: values?.stringMaxLength ?? tr.stringMaxLength,
      stringMinLength: values?.stringMinLength ?? tr.stringMinLength,
      stringMustBeInRange: values?.stringMustBeInRange ?? tr.stringMustBeInRange,
      stringMustBeDateTime: values?.stringMustBeDateTime ?? tr.stringMustBeDateTime,
      stringMustBeTimeOfDay: values?.stringMustBeTimeOfDay ?? tr.stringMustBeTimeOfDay,
      mustBeDateAfter: values?.mustBeDateAfter ?? tr.mustBeDateAfter,
      mustBeDateBefore: values?.mustBeDateBefore ?? tr.mustBeDateBefore,
      mustBeTimeOfDayAfter: values?.mustBeTimeOfDayAfter ?? tr.mustBeTimeOfDayAfter,
      mustBeTimeOfDayBefore: values?.mustBeTimeOfDayBefore ?? tr.mustBeTimeOfDayBefore,
      mustBeNumber: values?.mustBeNumber ?? tr.mustBeNumber,
      mustBeInteger: values?.mustBeInteger ?? tr.mustBeInteger,
      mustBeDecimal: values?.mustBeDecimal ?? tr.mustBeDecimal,
      mustBeGithubUrl: values?.mustBeGithubUrl ?? tr.mustBeGithubUrl,
      mustBeRedditUrl: values?.mustBeRedditUrl ?? tr.mustBeRedditUrl,
      mustBeInstagramUrl: values?.mustBeInstagramUrl ?? tr.mustBeInstagramUrl,
      mustBeLinkedinProfile: values?.mustBeLinkedinProfile ?? tr.mustBeLinkedinProfile,
      mustBeTwitterUser: values?.mustBeTwitterUser ?? tr.mustBeTwitterUser,
      mustBeYoutubeVideoUrl: values?.mustBeYoutubeVideoUrl ?? tr.mustBeYoutubeVideoUrl,
      mustBeFacbookPageOrProfile: values?.mustBeFacbookPageOrProfile ?? tr.mustBeFacbookPageOrProfile,
      mustBeSnapchatProfile: values?.mustBeSnapchatProfile ?? tr.mustBeSnapchatProfile,
      mustBeUrl: values?.mustBeUrl ?? tr.mustBeUrl,
      mustBeEmail: values?.mustBeEmail ?? tr.mustBeEmail,
      mustBeHexColor: values?.mustBeHexColor ?? tr.mustBeHexColor,
      mustBeLocaleEgyptianPhone: values?.mustBeLocaleEgyptianPhone ?? tr.mustBeLocaleEgyptianPhone,
      mustBeInternationalEgyptianPhone: values?.mustBeInternationalEgyptianPhone ?? tr.mustBeInternationalEgyptianPhone,
      mustBeLocaleKsaPhone: values?.mustBeLocaleKsaPhone ?? tr.mustBeLocaleKsaPhone,
      mustBeInternationalKsaPhone: values?.mustBeInternationalKsaPhone ?? tr.mustBeInternationalKsaPhone,
    );
  }
}
