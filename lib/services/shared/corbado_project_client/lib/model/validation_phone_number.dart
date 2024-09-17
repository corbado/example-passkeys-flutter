//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationPhoneNumber {
  /// Returns a new [ValidationPhoneNumber] instance.
  ValidationPhoneNumber({
    required this.nationalNumber,
    required this.countryCode,
    required this.regionCode,
    required this.nationalFormatted,
    required this.internationalFormatted,
  });

  int nationalNumber;

  int countryCode;

  String regionCode;

  String nationalFormatted;

  String internationalFormatted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValidationPhoneNumber &&
          other.nationalNumber == nationalNumber &&
          other.countryCode == countryCode &&
          other.regionCode == regionCode &&
          other.nationalFormatted == nationalFormatted &&
          other.internationalFormatted == internationalFormatted;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nationalNumber.hashCode) +
      (countryCode.hashCode) +
      (regionCode.hashCode) +
      (nationalFormatted.hashCode) +
      (internationalFormatted.hashCode);

  @override
  String toString() =>
      'ValidationPhoneNumber[nationalNumber=$nationalNumber, countryCode=$countryCode, regionCode=$regionCode, nationalFormatted=$nationalFormatted, internationalFormatted=$internationalFormatted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'nationalNumber'] = this.nationalNumber;
    json[r'countryCode'] = this.countryCode;
    json[r'regionCode'] = this.regionCode;
    json[r'nationalFormatted'] = this.nationalFormatted;
    json[r'internationalFormatted'] = this.internationalFormatted;
    return json;
  }

  /// Returns a new [ValidationPhoneNumber] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationPhoneNumber? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ValidationPhoneNumber[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ValidationPhoneNumber[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationPhoneNumber(
        nationalNumber: mapValueOfType<int>(json, r'nationalNumber')!,
        countryCode: mapValueOfType<int>(json, r'countryCode')!,
        regionCode: mapValueOfType<String>(json, r'regionCode')!,
        nationalFormatted: mapValueOfType<String>(json, r'nationalFormatted')!,
        internationalFormatted:
            mapValueOfType<String>(json, r'internationalFormatted')!,
      );
    }
    return null;
  }

  static List<ValidationPhoneNumber> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ValidationPhoneNumber>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationPhoneNumber.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationPhoneNumber> mapFromJson(dynamic json) {
    final map = <String, ValidationPhoneNumber>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationPhoneNumber.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationPhoneNumber-objects as value to a dart map
  static Map<String, List<ValidationPhoneNumber>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ValidationPhoneNumber>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationPhoneNumber.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nationalNumber',
    'countryCode',
    'regionCode',
    'nationalFormatted',
    'internationalFormatted',
  };
}
