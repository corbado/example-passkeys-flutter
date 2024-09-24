//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PhoneNumberValidationResult {
  /// Returns a new [PhoneNumberValidationResult] instance.
  PhoneNumberValidationResult({
    required this.isValid,
    required this.validationCode,
    this.phoneNumber,
  });

  bool isValid;

  PhoneNumberValidationResultValidationCodeEnum validationCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidationPhoneNumber? phoneNumber;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneNumberValidationResult &&
          other.isValid == isValid &&
          other.validationCode == validationCode &&
          other.phoneNumber == phoneNumber;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (isValid.hashCode) +
      (validationCode.hashCode) +
      (phoneNumber == null ? 0 : phoneNumber!.hashCode);

  @override
  String toString() =>
      'PhoneNumberValidationResult[isValid=$isValid, validationCode=$validationCode, phoneNumber=$phoneNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'isValid'] = this.isValid;
    json[r'validationCode'] = this.validationCode;
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
    return json;
  }

  /// Returns a new [PhoneNumberValidationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PhoneNumberValidationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PhoneNumberValidationResult[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PhoneNumberValidationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PhoneNumberValidationResult(
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        validationCode: PhoneNumberValidationResultValidationCodeEnum.fromJson(
            json[r'validationCode'])!,
        phoneNumber: ValidationPhoneNumber.fromJson(json[r'phoneNumber']),
      );
    }
    return null;
  }

  static List<PhoneNumberValidationResult> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PhoneNumberValidationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PhoneNumberValidationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PhoneNumberValidationResult> mapFromJson(dynamic json) {
    final map = <String, PhoneNumberValidationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PhoneNumberValidationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PhoneNumberValidationResult-objects as value to a dart map
  static Map<String, List<PhoneNumberValidationResult>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PhoneNumberValidationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PhoneNumberValidationResult.listFromJson(
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

class PhoneNumberValidationResultValidationCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PhoneNumberValidationResultValidationCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const valid =
      PhoneNumberValidationResultValidationCodeEnum._(r'valid');
  static const invalidCountryCode =
      PhoneNumberValidationResultValidationCodeEnum._(r'invalid_country_code');
  static const invalidNumber =
      PhoneNumberValidationResultValidationCodeEnum._(r'invalid_number');
  static const tooLong =
      PhoneNumberValidationResultValidationCodeEnum._(r'too_long');

  /// List of all possible values in this [enum][PhoneNumberValidationResultValidationCodeEnum].
  static const values = <PhoneNumberValidationResultValidationCodeEnum>[
    valid,
    invalidCountryCode,
    invalidNumber,
    tooLong,
  ];

  static PhoneNumberValidationResultValidationCodeEnum? fromJson(
          dynamic value) =>
      PhoneNumberValidationResultValidationCodeEnumTypeTransformer()
          .decode(value);

  static List<PhoneNumberValidationResultValidationCodeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PhoneNumberValidationResultValidationCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            PhoneNumberValidationResultValidationCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PhoneNumberValidationResultValidationCodeEnum] to String,
/// and [decode] dynamic data back to [PhoneNumberValidationResultValidationCodeEnum].
class PhoneNumberValidationResultValidationCodeEnumTypeTransformer {
  factory PhoneNumberValidationResultValidationCodeEnumTypeTransformer() =>
      _instance ??=
          const PhoneNumberValidationResultValidationCodeEnumTypeTransformer
              ._();

  const PhoneNumberValidationResultValidationCodeEnumTypeTransformer._();

  String encode(PhoneNumberValidationResultValidationCodeEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a PhoneNumberValidationResultValidationCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PhoneNumberValidationResultValidationCodeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'valid':
          return PhoneNumberValidationResultValidationCodeEnum.valid;
        case r'invalid_country_code':
          return PhoneNumberValidationResultValidationCodeEnum
              .invalidCountryCode;
        case r'invalid_number':
          return PhoneNumberValidationResultValidationCodeEnum.invalidNumber;
        case r'too_long':
          return PhoneNumberValidationResultValidationCodeEnum.tooLong;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PhoneNumberValidationResultValidationCodeEnumTypeTransformer] instance.
  static PhoneNumberValidationResultValidationCodeEnumTypeTransformer?
      _instance;
}
