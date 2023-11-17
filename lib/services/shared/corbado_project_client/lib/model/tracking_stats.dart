//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingStats {
  /// Returns a new [TrackingStats] instance.
  TrackingStats({
    required this.timePoint,
    required this.aggregateVisits,
    required this.aggregateWebauthn,
    required this.aggregatePlatform,
    required this.aggregateConditionalUi,
  });

  String timePoint;

  int aggregateVisits;

  int aggregateWebauthn;

  int aggregatePlatform;

  int aggregateConditionalUi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingStats &&
     other.timePoint == timePoint &&
     other.aggregateVisits == aggregateVisits &&
     other.aggregateWebauthn == aggregateWebauthn &&
     other.aggregatePlatform == aggregatePlatform &&
     other.aggregateConditionalUi == aggregateConditionalUi;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePoint.hashCode) +
    (aggregateVisits.hashCode) +
    (aggregateWebauthn.hashCode) +
    (aggregatePlatform.hashCode) +
    (aggregateConditionalUi.hashCode);

  @override
  String toString() => 'TrackingStats[timePoint=$timePoint, aggregateVisits=$aggregateVisits, aggregateWebauthn=$aggregateWebauthn, aggregatePlatform=$aggregatePlatform, aggregateConditionalUi=$aggregateConditionalUi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timePoint'] = this.timePoint;
      json[r'aggregateVisits'] = this.aggregateVisits;
      json[r'aggregateWebauthn'] = this.aggregateWebauthn;
      json[r'aggregatePlatform'] = this.aggregatePlatform;
      json[r'aggregateConditionalUi'] = this.aggregateConditionalUi;
    return json;
  }

  /// Returns a new [TrackingStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingStats(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        aggregateVisits: mapValueOfType<int>(json, r'aggregateVisits')!,
        aggregateWebauthn: mapValueOfType<int>(json, r'aggregateWebauthn')!,
        aggregatePlatform: mapValueOfType<int>(json, r'aggregatePlatform')!,
        aggregateConditionalUi: mapValueOfType<int>(json, r'aggregateConditionalUi')!,
      );
    }
    return null;
  }

  static List<TrackingStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingStats> mapFromJson(dynamic json) {
    final map = <String, TrackingStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingStats-objects as value to a dart map
  static Map<String, List<TrackingStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'aggregateVisits',
    'aggregateWebauthn',
    'aggregatePlatform',
    'aggregateConditionalUi',
  };
}

