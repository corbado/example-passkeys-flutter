//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailValidationResult {
  /// Returns a new [EmailValidationResult] instance.
  EmailValidationResult({
    required this.isValid,
    required this.validationCode,
    this.suggestion,
    this.email,
  });

  bool isValid;

  EmailValidationResultValidationCodeEnum validationCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suggestion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidationEmail? email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailValidationResult &&
          other.isValid == isValid &&
          other.validationCode == validationCode &&
          other.suggestion == suggestion &&
          other.email == email;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (isValid.hashCode) +
      (validationCode.hashCode) +
      (suggestion == null ? 0 : suggestion!.hashCode) +
      (email == null ? 0 : email!.hashCode);

  @override
  String toString() =>
      'EmailValidationResult[isValid=$isValid, validationCode=$validationCode, suggestion=$suggestion, email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'isValid'] = this.isValid;
    json[r'validationCode'] = this.validationCode;
    if (this.suggestion != null) {
      json[r'suggestion'] = this.suggestion;
    } else {
      json[r'suggestion'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    return json;
  }

  /// Returns a new [EmailValidationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailValidationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailValidationResult[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailValidationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailValidationResult(
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        validationCode: EmailValidationResultValidationCodeEnum.fromJson(
            json[r'validationCode'])!,
        suggestion: mapValueOfType<String>(json, r'suggestion'),
        email: ValidationEmail.fromJson(json[r'email']),
      );
    }
    return null;
  }

  static List<EmailValidationResult> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailValidationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailValidationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailValidationResult> mapFromJson(dynamic json) {
    final map = <String, EmailValidationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailValidationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailValidationResult-objects as value to a dart map
  static Map<String, List<EmailValidationResult>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailValidationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailValidationResult.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'isValid',
    'validationCode',
  };
}

class EmailValidationResultValidationCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailValidationResultValidationCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const valid = EmailValidationResultValidationCodeEnum._(r'valid');
  static const invalidSyntax =
      EmailValidationResultValidationCodeEnum._(r'invalid_syntax');
  static const noSuchHost =
      EmailValidationResultValidationCodeEnum._(r'no_such_host');
  static const notAllowed =
      EmailValidationResultValidationCodeEnum._(r'not_allowed');
  static const unknown = EmailValidationResultValidationCodeEnum._(r'unknown');

  /// List of all possible values in this [enum][EmailValidationResultValidationCodeEnum].
  static const values = <EmailValidationResultValidationCodeEnum>[
    valid,
    invalidSyntax,
    noSuchHost,
    notAllowed,
    unknown,
  ];

  static EmailValidationResultValidationCodeEnum? fromJson(dynamic value) =>
      EmailValidationResultValidationCodeEnumTypeTransformer().decode(value);

  static List<EmailValidationResultValidationCodeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailValidationResultValidationCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailValidationResultValidationCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailValidationResultValidationCodeEnum] to String,
/// and [decode] dynamic data back to [EmailValidationResultValidationCodeEnum].
class EmailValidationResultValidationCodeEnumTypeTransformer {
  factory EmailValidationResultValidationCodeEnumTypeTransformer() =>
      _instance ??=
          const EmailValidationResultValidationCodeEnumTypeTransformer._();

  const EmailValidationResultValidationCodeEnumTypeTransformer._();

  String encode(EmailValidationResultValidationCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailValidationResultValidationCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailValidationResultValidationCodeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'valid':
          return EmailValidationResultValidationCodeEnum.valid;
        case r'invalid_syntax':
          return EmailValidationResultValidationCodeEnum.invalidSyntax;
        case r'no_such_host':
          return EmailValidationResultValidationCodeEnum.noSuchHost;
        case r'not_allowed':
          return EmailValidationResultValidationCodeEnum.notAllowed;
        case r'unknown':
          return EmailValidationResultValidationCodeEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailValidationResultValidationCodeEnumTypeTransformer] instance.
  static EmailValidationResultValidationCodeEnumTypeTransformer? _instance;
}
