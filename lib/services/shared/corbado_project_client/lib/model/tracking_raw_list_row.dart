//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingRawListRow {
  /// Returns a new [TrackingRawListRow] instance.
  TrackingRawListRow({
    required this.timePoint,
    required this.hasWebauthn,
    required this.hasPlatformAuth,
    required this.hasConditionalUi,
    required this.osId,
    required this.browserId,
  });

  String timePoint;

  bool hasWebauthn;

  bool hasPlatformAuth;

  bool hasConditionalUi;

  String osId;

  String browserId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingRawListRow &&
     other.timePoint == timePoint &&
     other.hasWebauthn == hasWebauthn &&
     other.hasPlatformAuth == hasPlatformAuth &&
     other.hasConditionalUi == hasConditionalUi &&
     other.osId == osId &&
     other.browserId == browserId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePoint.hashCode) +
    (hasWebauthn.hashCode) +
    (hasPlatformAuth.hashCode) +
    (hasConditionalUi.hashCode) +
    (osId.hashCode) +
    (browserId.hashCode);

  @override
  String toString() => 'TrackingRawListRow[timePoint=$timePoint, hasWebauthn=$hasWebauthn, hasPlatformAuth=$hasPlatformAuth, hasConditionalUi=$hasConditionalUi, osId=$osId, browserId=$browserId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timePoint'] = this.timePoint;
      json[r'hasWebauthn'] = this.hasWebauthn;
      json[r'hasPlatformAuth'] = this.hasPlatformAuth;
      json[r'hasConditionalUi'] = this.hasConditionalUi;
      json[r'osId'] = this.osId;
      json[r'browserId'] = this.browserId;
    return json;
  }

  /// Returns a new [TrackingRawListRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingRawListRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingRawListRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingRawListRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingRawListRow(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        hasWebauthn: mapValueOfType<bool>(json, r'hasWebauthn')!,
        hasPlatformAuth: mapValueOfType<bool>(json, r'hasPlatformAuth')!,
        hasConditionalUi: mapValueOfType<bool>(json, r'hasConditionalUi')!,
        osId: mapValueOfType<String>(json, r'osId')!,
        browserId: mapValueOfType<String>(json, r'browserId')!,
      );
    }
    return null;
  }

  static List<TrackingRawListRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingRawListRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingRawListRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingRawListRow> mapFromJson(dynamic json) {
    final map = <String, TrackingRawListRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingRawListRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingRawListRow-objects as value to a dart map
  static Map<String, List<TrackingRawListRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingRawListRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingRawListRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'hasWebauthn',
    'hasPlatformAuth',
    'hasConditionalUi',
    'osId',
    'browserId',
  };
}

