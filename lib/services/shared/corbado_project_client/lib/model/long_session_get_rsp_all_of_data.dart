//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LongSessionGetRspAllOfData {
  /// Returns a new [LongSessionGetRspAllOfData] instance.
  LongSessionGetRspAllOfData({
    required this.longSession,
  });

  LongSession longSession;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LongSessionGetRspAllOfData && other.longSession == longSession;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (longSession.hashCode);

  @override
  String toString() => 'LongSessionGetRspAllOfData[longSession=$longSession]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'longSession'] = this.longSession;
    return json;
  }

  /// Returns a new [LongSessionGetRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LongSessionGetRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "LongSessionGetRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "LongSessionGetRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LongSessionGetRspAllOfData(
        longSession: LongSession.fromJson(json[r'longSession'])!,
      );
    }
    return null;
  }

  static List<LongSessionGetRspAllOfData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LongSessionGetRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LongSessionGetRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LongSessionGetRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, LongSessionGetRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LongSessionGetRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LongSessionGetRspAllOfData-objects as value to a dart map
  static Map<String, List<LongSessionGetRspAllOfData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<LongSessionGetRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LongSessionGetRspAllOfData.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'longSession',
  };
}
