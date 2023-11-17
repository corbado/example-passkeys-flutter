//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingOSStats {
  /// Returns a new [TrackingOSStats] instance.
  TrackingOSStats({
    required this.timePoint,
    required this.macos,
    required this.windows,
    required this.ios,
    required this.android,
    required this.other,
  });

  String timePoint;

  int macos;

  int windows;

  int ios;

  int android;

  int other;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingOSStats &&
     other.timePoint == timePoint &&
     other.macos == macos &&
     other.windows == windows &&
     other.ios == ios &&
     other.android == android &&
     other.other == other;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePoint.hashCode) +
    (macos.hashCode) +
    (windows.hashCode) +
    (ios.hashCode) +
    (android.hashCode) +
    (other.hashCode);

  @override
  String toString() => 'TrackingOSStats[timePoint=$timePoint, macos=$macos, windows=$windows, ios=$ios, android=$android, other=$other]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timePoint'] = this.timePoint;
      json[r'macos'] = this.macos;
      json[r'windows'] = this.windows;
      json[r'ios'] = this.ios;
      json[r'android'] = this.android;
      json[r'other'] = this.other;
    return json;
  }

  /// Returns a new [TrackingOSStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingOSStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingOSStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingOSStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingOSStats(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        macos: mapValueOfType<int>(json, r'macos')!,
        windows: mapValueOfType<int>(json, r'windows')!,
        ios: mapValueOfType<int>(json, r'ios')!,
        android: mapValueOfType<int>(json, r'android')!,
        other: mapValueOfType<int>(json, r'other')!,
      );
    }
    return null;
  }

  static List<TrackingOSStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingOSStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingOSStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingOSStats> mapFromJson(dynamic json) {
    final map = <String, TrackingOSStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingOSStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingOSStats-objects as value to a dart map
  static Map<String, List<TrackingOSStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingOSStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingOSStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'macos',
    'windows',
    'ios',
    'android',
    'other',
  };
}

