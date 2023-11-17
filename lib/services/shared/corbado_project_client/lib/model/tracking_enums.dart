//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingEnums {
  /// Returns a new [TrackingEnums] instance.
  TrackingEnums({
    this.browserNames = const [],
    this.osNames = const [],
    this.osPlatforms = const [],
  });

  List<String> browserNames;

  List<String> osNames;

  List<String> osPlatforms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingEnums &&
     other.browserNames == browserNames &&
     other.osNames == osNames &&
     other.osPlatforms == osPlatforms;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (browserNames.hashCode) +
    (osNames.hashCode) +
    (osPlatforms.hashCode);

  @override
  String toString() => 'TrackingEnums[browserNames=$browserNames, osNames=$osNames, osPlatforms=$osPlatforms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'browserNames'] = this.browserNames;
      json[r'osNames'] = this.osNames;
      json[r'osPlatforms'] = this.osPlatforms;
    return json;
  }

  /// Returns a new [TrackingEnums] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingEnums? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingEnums[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingEnums[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingEnums(
        browserNames: json[r'browserNames'] is List
            ? (json[r'browserNames'] as List).cast<String>()
            : const [],
        osNames: json[r'osNames'] is List
            ? (json[r'osNames'] as List).cast<String>()
            : const [],
        osPlatforms: json[r'osPlatforms'] is List
            ? (json[r'osPlatforms'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<TrackingEnums> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingEnums>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingEnums.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingEnums> mapFromJson(dynamic json) {
    final map = <String, TrackingEnums>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingEnums.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingEnums-objects as value to a dart map
  static Map<String, List<TrackingEnums>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingEnums>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingEnums.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'browserNames',
    'osNames',
    'osPlatforms',
  };
}

