//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CustomLoginIdentifier {
  /// Returns a new [CustomLoginIdentifier] instance.
  CustomLoginIdentifier({
    required this.ID,
    required this.identifier,
    required this.created,
    required this.updated,
    this.additionalData,
  });

  /// ID of the phone number
  String ID;

  String identifier;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? additionalData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomLoginIdentifier &&
     other.ID == ID &&
     other.identifier == identifier &&
     other.created == created &&
     other.updated == updated &&
     other.additionalData == additionalData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ID.hashCode) +
    (identifier.hashCode) +
    (created.hashCode) +
    (updated.hashCode) +
    (additionalData == null ? 0 : additionalData!.hashCode);

  @override
  String toString() => 'CustomLoginIdentifier[ID=$ID, identifier=$identifier, created=$created, updated=$updated, additionalData=$additionalData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ID'] = this.ID;
      json[r'identifier'] = this.identifier;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
    if (this.additionalData != null) {
      json[r'additionalData'] = this.additionalData;
    } else {
      json[r'additionalData'] = null;
    }
    return json;
  }

  /// Returns a new [CustomLoginIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomLoginIdentifier? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomLoginIdentifier[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomLoginIdentifier[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomLoginIdentifier(
        ID: mapValueOfType<String>(json, r'ID')!,
        identifier: mapValueOfType<String>(json, r'identifier')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        additionalData: mapValueOfType<String>(json, r'additionalData'),
      );
    }
    return null;
  }

  static List<CustomLoginIdentifier> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomLoginIdentifier>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomLoginIdentifier.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomLoginIdentifier> mapFromJson(dynamic json) {
    final map = <String, CustomLoginIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomLoginIdentifier.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomLoginIdentifier-objects as value to a dart map
  static Map<String, List<CustomLoginIdentifier>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomLoginIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomLoginIdentifier.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ID',
    'identifier',
    'created',
    'updated',
  };
}

