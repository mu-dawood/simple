extension StringExtensions on String? {
  /// will convert from english numbers to arabic numbers
  String? englishToArabicNumbers() {
    return this
        ?.replaceAll('0', '٠')
        .replaceAll('1', '١')
        .replaceAll('2', '٢')
        .replaceAll('3', '٣')
        .replaceAll('4', '٤')
        .replaceAll('5', '٥')
        .replaceAll('6', '٦')
        .replaceAll('7', '٧')
        .replaceAll('8', '٨')
        .replaceAll('9', '٩');
  }

  /// will convert from arabic numbers to english numbers
  String? arabicToEnglishNumbers() {
    return this
        ?.replaceAll('٠', '0')
        .replaceAll('١', '1')
        .replaceAll('٢', '2')
        .replaceAll('٣', '3')
        .replaceAll('٤', '4')
        .replaceAll('٥', '5')
        .replaceAll('٦', '6')
        .replaceAll('٧', '7')
        .replaceAll('٨', '8')
        .replaceAll('٩', '9');
  }

  /// check the string can be double
  bool get isDouble {
    return double.tryParse(this ?? '') != null;
  }

  /// check the string is null or empty or whitespaces
  bool get isNullOrEmptyOrWhiteSpace {
    return this == null || (this ?? '').trim() == '';
  }

  /// check the string is null or empty
  bool get isNullOrEmpty {
    return this == null || this == '';
  }
  // check string is locale egyptian phone

  bool get isLocaleEgyptianPhone {
    return RegExp(r'^(01|1)([0-9]{9})$').hasMatch(this ?? '');
  }
  // check string is international egyptian phone

  bool get isInternationalEgyptianPhone {
    return RegExp(r'^(00201|201|\+201)([0-9]{9})$').hasMatch(this ?? '');
  }
  // check string is locale ksa phone

  bool get isLocaleKsaPhone {
    return RegExp(r'^(05)(5|0|3|6|4|9|1|8|7)([0-9]{7})$').hasMatch(this ?? '');
  }

  // check string is international ksa phone
  bool get isInternationalKsaPhone {
    return RegExp(
            r'^(009665|0096605|9665|96605|\+9665|\+96605|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$')
        .hasMatch(this ?? '');
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
  /// else will return null
  DateTime? toDate() {
    if (this != null) return DateTime.tryParse(this!);
    return null;
  }

  /// convert `String` to `double` if is possible
  /// else will return null
  double? toDouble() {
    if (this != null) return double.tryParse(this!);
    return null;
  }

  /// convert `String` to `int` if is possible
  /// else will return null
  int? toInt() {
    if (this != null) return int.tryParse(this!);
    return null;
  }

  // check string is gitHub valid url
  // expression are fro  herehttps://github.com/nothingrandom/social-regex
  bool get isGitHubUser => RegExp(
          r'^(http(s)?:\/\/)?(www\.)?github\.com\/(?!-)(?:[A-z0-9-]){1,39}[^-]\/?$')
      .hasMatch(this ?? '');
  // check string is gitHub valid url
  // expression are fro  here https://github.com/nothingrandom/social-regex
  bool get isRedditUser => RegExp(
          r'^(http(s)?:\/\/)?(www\.)?reddit\.com\/user\/(?:[A-Za-z0-9_-]{3,20})\/?$')
      .hasMatch(this ?? '');

  // check string is instagram valid url
  // expression are fro  here https://github.com/nothingrandom/social-regex
  bool get isInstagramUser => RegExp(
          r'^(http(s)?:\/\/)?(www\.)?instagram\.com\/([A-Za-z0-9_](?:(?:[A-Za-z0-9_]|(?:\.(?!\.))){0,28}(?:[A-Za-z0-9_]))?)\/?$')
      .hasMatch(this ?? '');

  // check string is linkedin valid url
  // expression are fro  here https://github.com/nothingrandom/social-regex
  bool get isLinkedinUser => RegExp(
          r'^(http(s)?:\/\/)?(www\.)?linkedin\.com\/(in|profile|pub)\/([A-z 0-9 _ -]+)\/?$')
      .hasMatch(this ?? '');

  // check string is facebook valid url
  // expression are fro  here https://github.com/nothingrandom/social-regex
  bool get isTwitterUser =>
      RegExp(r'^(http(s)?:\/\/)?(www\.)?twitter\.com\/[A-z 0-9 _]{1,15}\/?$')
          .hasMatch(this ?? '');

  // check string is youtube valid url
  bool get isYoutubeUrl =>
      RegExp(r'^(https?\:\/\/)?(www\.youtube\.com|youtu\.?be)\/.+$')
          .hasMatch(this ?? '');
  // check string is youtube valid url
  bool get isFacbookPageOrProfile => RegExp(
          r'(?:(?:http|https):\/\/)?(?:www.)?facebook.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[?\w\-]*\/)?(?:profile.php\?id=(?=\d.*))?([\w\-]*)?')
      .hasMatch(this ?? '');

  // check string is snapchat valid url
  bool get isSnapchatProfile => RegExp(
          r'(?:https?:)?\/\/(?:www\.)?snapchat\.com\/add\/([A-z0-9\.\_\-]+)\/?')
      .hasMatch(this ?? '');
}
