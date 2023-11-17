//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingDetailedStats {
  /// Returns a new [TrackingDetailedStats] instance.
  TrackingDetailedStats({
    required this.timePoint,
    required this.visits,
    required this.webauthn,
    required this.platform,
    required this.conditionalUi,
  });

  String timePoint;

  int visits;

  int webauthn;

  int platform;

  int conditionalUi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingDetailedStats &&
     other.timePoint == timePoint &&
     other.visits == visits &&
     other.webauthn == webauthn &&
     other.platform == platform &&
     other.conditionalUi == conditionalUi;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePoint.hashCode) +
    (visits.hashCode) +
    (webauthn.hashCode) +
    (platform.hashCode) +
    (conditionalUi.hashCode);

  @override
  String toString() => 'TrackingDetailedStats[timePoint=$timePoint, visits=$visits, webauthn=$webauthn, platform=$platform, conditionalUi=$conditionalUi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timePoint'] = this.timePoint;
      json[r'visits'] = this.visits;
      json[r'webauthn'] = this.webauthn;
      json[r'platform'] = this.platform;
      json[r'conditionalUi'] = this.conditionalUi;
    return json;
  }

  /// Returns a new [TrackingDetailedStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingDetailedStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingDetailedStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingDetailedStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingDetailedStats(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        visits: mapValueOfType<int>(json, r'visits')!,
        webauthn: mapValueOfType<int>(json, r'webauthn')!,
        platform: mapValueOfType<int>(json, r'platform')!,
        conditionalUi: mapValueOfType<int>(json, r'conditionalUi')!,
      );
    }
    return null;
  }

  static List<TrackingDetailedStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingDetailedStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingDetailedStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingDetailedStats> mapFromJson(dynamic json) {
    final map = <String, TrackingDetailedStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingDetailedStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingDetailedStats-objects as value to a dart map
  static Map<String, List<TrackingDetailedStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingDetailedStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingDetailedStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'visits',
    'webauthn',
    'platform',
    'conditionalUi',
  };
}

