//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssociationTokenCreateRspAllOfData {
  /// Returns a new [AssociationTokenCreateRspAllOfData] instance.
  AssociationTokenCreateRspAllOfData({
    this.token,
    this.rejectionReason,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rejectionReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssociationTokenCreateRspAllOfData &&
     other.token == token &&
     other.rejectionReason == rejectionReason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token == null ? 0 : token!.hashCode) +
    (rejectionReason == null ? 0 : rejectionReason!.hashCode);

  @override
  String toString() => 'AssociationTokenCreateRspAllOfData[token=$token, rejectionReason=$rejectionReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.rejectionReason != null) {
      json[r'rejectionReason'] = this.rejectionReason;
    } else {
      json[r'rejectionReason'] = null;
    }
    return json;
  }

  /// Returns a new [AssociationTokenCreateRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssociationTokenCreateRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssociationTokenCreateRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssociationTokenCreateRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssociationTokenCreateRspAllOfData(
        token: mapValueOfType<String>(json, r'token'),
        rejectionReason: mapValueOfType<String>(json, r'rejectionReason'),
      );
    }
    return null;
  }

  static List<AssociationTokenCreateRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssociationTokenCreateRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssociationTokenCreateRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssociationTokenCreateRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, AssociationTokenCreateRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssociationTokenCreateRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssociationTokenCreateRspAllOfData-objects as value to a dart map
  static Map<String, List<AssociationTokenCreateRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssociationTokenCreateRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssociationTokenCreateRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

