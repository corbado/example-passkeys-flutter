//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingBrowserDetailedStats {
  /// Returns a new [TrackingBrowserDetailedStats] instance.
  TrackingBrowserDetailedStats({
    required this.timePoint,
    required this.browserName,
    required this.browserVersion,
    required this.cnt,
    required this.webauthn,
    required this.platform,
    required this.conditionalUi,
  });

  String timePoint;

  String browserName;

  String browserVersion;

  int cnt;

  int webauthn;

  int platform;

  int conditionalUi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingBrowserDetailedStats &&
     other.timePoint == timePoint &&
     other.browserName == browserName &&
     other.browserVersion == browserVersion &&
     other.cnt == cnt &&
     other.webauthn == webauthn &&
     other.platform == platform &&
     other.conditionalUi == conditionalUi;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePoint.hashCode) +
    (browserName.hashCode) +
    (browserVersion.hashCode) +
    (cnt.hashCode) +
    (webauthn.hashCode) +
    (platform.hashCode) +
    (conditionalUi.hashCode);

  @override
  String toString() => 'TrackingBrowserDetailedStats[timePoint=$timePoint, browserName=$browserName, browserVersion=$browserVersion, cnt=$cnt, webauthn=$webauthn, platform=$platform, conditionalUi=$conditionalUi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timePoint'] = this.timePoint;
      json[r'browserName'] = this.browserName;
      json[r'browserVersion'] = this.browserVersion;
      json[r'cnt'] = this.cnt;
      json[r'webauthn'] = this.webauthn;
      json[r'platform'] = this.platform;
      json[r'conditional_ui'] = this.conditionalUi;
    return json;
  }

  /// Returns a new [TrackingBrowserDetailedStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingBrowserDetailedStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingBrowserDetailedStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingBrowserDetailedStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingBrowserDetailedStats(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        browserName: mapValueOfType<String>(json, r'browserName')!,
        browserVersion: mapValueOfType<String>(json, r'browserVersion')!,
        cnt: mapValueOfType<int>(json, r'cnt')!,
        webauthn: mapValueOfType<int>(json, r'webauthn')!,
        platform: mapValueOfType<int>(json, r'platform')!,
        conditionalUi: mapValueOfType<int>(json, r'conditional_ui')!,
      );
    }
    return null;
  }

  static List<TrackingBrowserDetailedStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingBrowserDetailedStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingBrowserDetailedStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingBrowserDetailedStats> mapFromJson(dynamic json) {
    final map = <String, TrackingBrowserDetailedStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingBrowserDetailedStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingBrowserDetailedStats-objects as value to a dart map
  static Map<String, List<TrackingBrowserDetailedStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingBrowserDetailedStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingBrowserDetailedStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'browserName',
    'browserVersion',
    'cnt',
    'webauthn',
    'platform',
    'conditional_ui',
  };
}

