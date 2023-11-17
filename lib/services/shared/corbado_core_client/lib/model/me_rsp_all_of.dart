//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MeRspAllOf {
  /// Returns a new [MeRspAllOf] instance.
  MeRspAllOf({
    required this.fullName,
    required this.userIdentifier,
    required this.confirmed,
  });

  String fullName;

  String userIdentifier;

  bool confirmed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MeRspAllOf &&
     other.fullName == fullName &&
     other.userIdentifier == userIdentifier &&
     other.confirmed == confirmed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fullName.hashCode) +
    (userIdentifier.hashCode) +
    (confirmed.hashCode);

  @override
  String toString() => 'MeRspAllOf[fullName=$fullName, userIdentifier=$userIdentifier, confirmed=$confirmed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fullName'] = this.fullName;
      json[r'userIdentifier'] = this.userIdentifier;
      json[r'confirmed'] = this.confirmed;
    return json;
  }

  /// Returns a new [MeRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MeRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MeRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MeRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MeRspAllOf(
        fullName: mapValueOfType<String>(json, r'fullName')!,
        userIdentifier: mapValueOfType<String>(json, r'userIdentifier')!,
        confirmed: mapValueOfType<bool>(json, r'confirmed')!,
      );
    }
    return null;
  }

  static List<MeRspAllOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MeRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MeRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MeRspAllOf> mapFromJson(dynamic json) {
    final map = <String, MeRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MeRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MeRspAllOf-objects as value to a dart map
  static Map<String, List<MeRspAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MeRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MeRspAllOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fullName',
    'userIdentifier',
    'confirmed',
  };
}

