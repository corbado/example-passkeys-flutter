//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OriginAllowedRspAllOf {
  /// Returns a new [OriginAllowedRspAllOf] instance.
  OriginAllowedRspAllOf({
    required this.allowed,
  });

  bool allowed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OriginAllowedRspAllOf && other.allowed == allowed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (allowed.hashCode);

  @override
  String toString() => 'OriginAllowedRspAllOf[allowed=$allowed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'allowed'] = this.allowed;
    return json;
  }

  /// Returns a new [OriginAllowedRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OriginAllowedRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OriginAllowedRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OriginAllowedRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OriginAllowedRspAllOf(
        allowed: mapValueOfType<bool>(json, r'allowed')!,
      );
    }
    return null;
  }

  static List<OriginAllowedRspAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OriginAllowedRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OriginAllowedRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OriginAllowedRspAllOf> mapFromJson(dynamic json) {
    final map = <String, OriginAllowedRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OriginAllowedRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OriginAllowedRspAllOf-objects as value to a dart map
  static Map<String, List<OriginAllowedRspAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OriginAllowedRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OriginAllowedRspAllOf.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'allowed',
  };
}
