//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCustomLoginIdentifierGetRspAllOfData {
  /// Returns a new [UserCustomLoginIdentifierGetRspAllOfData] instance.
  UserCustomLoginIdentifierGetRspAllOfData({
    required this.customLoginIdentifier,
  });

  CustomLoginIdentifier customLoginIdentifier;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCustomLoginIdentifierGetRspAllOfData &&
          other.customLoginIdentifier == customLoginIdentifier;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (customLoginIdentifier.hashCode);

  @override
  String toString() =>
      'UserCustomLoginIdentifierGetRspAllOfData[customLoginIdentifier=$customLoginIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'customLoginIdentifier'] = this.customLoginIdentifier;
    return json;
  }

  /// Returns a new [UserCustomLoginIdentifierGetRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCustomLoginIdentifierGetRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UserCustomLoginIdentifierGetRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UserCustomLoginIdentifierGetRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCustomLoginIdentifierGetRspAllOfData(
        customLoginIdentifier:
            CustomLoginIdentifier.fromJson(json[r'customLoginIdentifier'])!,
      );
    }
    return null;
  }

  static List<UserCustomLoginIdentifierGetRspAllOfData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserCustomLoginIdentifierGetRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCustomLoginIdentifierGetRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCustomLoginIdentifierGetRspAllOfData> mapFromJson(
      dynamic json) {
    final map = <String, UserCustomLoginIdentifierGetRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            UserCustomLoginIdentifierGetRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCustomLoginIdentifierGetRspAllOfData-objects as value to a dart map
  static Map<String, List<UserCustomLoginIdentifierGetRspAllOfData>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserCustomLoginIdentifierGetRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCustomLoginIdentifierGetRspAllOfData.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customLoginIdentifier',
  };
}
