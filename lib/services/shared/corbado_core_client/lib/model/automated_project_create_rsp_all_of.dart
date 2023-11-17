//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedProjectCreateRspAllOf {
  /// Returns a new [AutomatedProjectCreateRspAllOf] instance.
  AutomatedProjectCreateRspAllOf({
    required this.data,
  });

  AutomatedProjectCreateResult data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedProjectCreateRspAllOf &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'AutomatedProjectCreateRspAllOf[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [AutomatedProjectCreateRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedProjectCreateRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedProjectCreateRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedProjectCreateRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedProjectCreateRspAllOf(
        data: AutomatedProjectCreateResult.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<AutomatedProjectCreateRspAllOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedProjectCreateRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedProjectCreateRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedProjectCreateRspAllOf> mapFromJson(dynamic json) {
    final map = <String, AutomatedProjectCreateRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedProjectCreateRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedProjectCreateRspAllOf-objects as value to a dart map
  static Map<String, List<AutomatedProjectCreateRspAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedProjectCreateRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedProjectCreateRspAllOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

