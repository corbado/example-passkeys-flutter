//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingBackupState {
  /// Returns a new [TrackingBackupState] instance.
  TrackingBackupState({
    required this.backedUp,
    required this.notBackedUp,
  });

  int backedUp;

  int notBackedUp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrackingBackupState &&
          other.backedUp == backedUp &&
          other.notBackedUp == notBackedUp;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (backedUp.hashCode) + (notBackedUp.hashCode);

  @override
  String toString() =>
      'TrackingBackupState[backedUp=$backedUp, notBackedUp=$notBackedUp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'backedUp'] = this.backedUp;
    json[r'notBackedUp'] = this.notBackedUp;
    return json;
  }

  /// Returns a new [TrackingBackupState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingBackupState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TrackingBackupState[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TrackingBackupState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingBackupState(
        backedUp: mapValueOfType<int>(json, r'backedUp')!,
        notBackedUp: mapValueOfType<int>(json, r'notBackedUp')!,
      );
    }
    return null;
  }

  static List<TrackingBackupState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TrackingBackupState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingBackupState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingBackupState> mapFromJson(dynamic json) {
    final map = <String, TrackingBackupState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingBackupState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingBackupState-objects as value to a dart map
  static Map<String, List<TrackingBackupState>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TrackingBackupState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingBackupState.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'backedUp',
    'notBackedUp',
  };
}
