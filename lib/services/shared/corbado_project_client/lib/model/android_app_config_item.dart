//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AndroidAppConfigItem {
  /// Returns a new [AndroidAppConfigItem] instance.
  AndroidAppConfigItem({
    required this.id,
    required this.projectID,
    required this.packageName,
    required this.fingerprint,
    required this.base64URL,
    required this.created,
    required this.updated,
  });

  /// ID of Android app configuration
  String id;

  /// ID of project
  String projectID;

  String packageName;

  String fingerprint;

  String base64URL;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AndroidAppConfigItem &&
     other.id == id &&
     other.projectID == projectID &&
     other.packageName == packageName &&
     other.fingerprint == fingerprint &&
     other.base64URL == base64URL &&
     other.created == created &&
     other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (projectID.hashCode) +
    (packageName.hashCode) +
    (fingerprint.hashCode) +
    (base64URL.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'AndroidAppConfigItem[id=$id, projectID=$projectID, packageName=$packageName, fingerprint=$fingerprint, base64URL=$base64URL, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'projectID'] = this.projectID;
      json[r'packageName'] = this.packageName;
      json[r'fingerprint'] = this.fingerprint;
      json[r'base64URL'] = this.base64URL;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
    return json;
  }

  /// Returns a new [AndroidAppConfigItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AndroidAppConfigItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AndroidAppConfigItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AndroidAppConfigItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AndroidAppConfigItem(
        id: mapValueOfType<String>(json, r'id')!,
        projectID: mapValueOfType<String>(json, r'projectID')!,
        packageName: mapValueOfType<String>(json, r'packageName')!,
        fingerprint: mapValueOfType<String>(json, r'fingerprint')!,
        base64URL: mapValueOfType<String>(json, r'base64URL')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
      );
    }
    return null;
  }

  static List<AndroidAppConfigItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AndroidAppConfigItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AndroidAppConfigItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AndroidAppConfigItem> mapFromJson(dynamic json) {
    final map = <String, AndroidAppConfigItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AndroidAppConfigItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AndroidAppConfigItem-objects as value to a dart map
  static Map<String, List<AndroidAppConfigItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AndroidAppConfigItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AndroidAppConfigItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'projectID',
    'packageName',
    'fingerprint',
    'base64URL',
    'created',
    'updated',
  };
}

