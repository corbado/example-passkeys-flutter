//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebauthnSettingCreate {
  /// Returns a new [WebauthnSettingCreate] instance.
  WebauthnSettingCreate({
    required this.name,
    required this.origin,
  });

  /// Name of this setting
  String name;

  /// Define here either a url incl. schema or an android-apk-key-hash
  String origin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebauthnSettingCreate &&
     other.name == name &&
     other.origin == origin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (origin.hashCode);

  @override
  String toString() => 'WebauthnSettingCreate[name=$name, origin=$origin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'origin'] = this.origin;
    return json;
  }

  /// Returns a new [WebauthnSettingCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebauthnSettingCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebauthnSettingCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebauthnSettingCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebauthnSettingCreate(
        name: mapValueOfType<String>(json, r'name')!,
        origin: mapValueOfType<String>(json, r'origin')!,
      );
    }
    return null;
  }

  static List<WebauthnSettingCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebauthnSettingCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebauthnSettingCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebauthnSettingCreate> mapFromJson(dynamic json) {
    final map = <String, WebauthnSettingCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebauthnSettingCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebauthnSettingCreate-objects as value to a dart map
  static Map<String, List<WebauthnSettingCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebauthnSettingCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebauthnSettingCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'origin',
  };
}

