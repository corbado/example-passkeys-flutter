//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingBrowserStats {
  /// Returns a new [TrackingBrowserStats] instance.
  TrackingBrowserStats({
    required this.timePoint,
    required this.chrome,
    required this.safari,
    required this.edge,
    required this.firefox,
    required this.other,
  });

  String timePoint;

  int chrome;

  int safari;

  int edge;

  int firefox;

  int other;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrackingBrowserStats &&
          other.timePoint == timePoint &&
          other.chrome == chrome &&
          other.safari == safari &&
          other.edge == edge &&
          other.firefox == firefox &&
          other.other == other;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (timePoint.hashCode) +
      (chrome.hashCode) +
      (safari.hashCode) +
      (edge.hashCode) +
      (firefox.hashCode) +
      (other.hashCode);

  @override
  String toString() =>
      'TrackingBrowserStats[timePoint=$timePoint, chrome=$chrome, safari=$safari, edge=$edge, firefox=$firefox, other=$other]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'timePoint'] = this.timePoint;
    json[r'chrome'] = this.chrome;
    json[r'safari'] = this.safari;
    json[r'edge'] = this.edge;
    json[r'firefox'] = this.firefox;
    json[r'other'] = this.other;
    return json;
  }

  /// Returns a new [TrackingBrowserStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingBrowserStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TrackingBrowserStats[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TrackingBrowserStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingBrowserStats(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        chrome: mapValueOfType<int>(json, r'chrome')!,
        safari: mapValueOfType<int>(json, r'safari')!,
        edge: mapValueOfType<int>(json, r'edge')!,
        firefox: mapValueOfType<int>(json, r'firefox')!,
        other: mapValueOfType<int>(json, r'other')!,
      );
    }
    return null;
  }

  static List<TrackingBrowserStats> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TrackingBrowserStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingBrowserStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingBrowserStats> mapFromJson(dynamic json) {
    final map = <String, TrackingBrowserStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingBrowserStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingBrowserStats-objects as value to a dart map
  static Map<String, List<TrackingBrowserStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TrackingBrowserStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingBrowserStats.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'chrome',
    'safari',
    'edge',
    'firefox',
    'other',
  };
}
