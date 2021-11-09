part of 'validations.dart';

class FieldValidator<T> {
  final String? Function(T? value) validate;
  FieldValidator._(this.validate);

  String? call(T? value) {
    return validate(value);
  }
}
