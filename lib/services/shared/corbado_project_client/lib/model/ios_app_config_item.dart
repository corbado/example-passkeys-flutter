//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IOSAppConfigItem {
  /// Returns a new [IOSAppConfigItem] instance.
  IOSAppConfigItem({
    required this.id,
    required this.projectID,
    required this.appIDPrefix,
    required this.bundleID,
    required this.created,
    required this.updated,
  });

  /// ID of iOS app
  String id;

  /// ID of project
  String projectID;

  String appIDPrefix;

  String bundleID;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IOSAppConfigItem &&
     other.id == id &&
     other.projectID == projectID &&
     other.appIDPrefix == appIDPrefix &&
     other.bundleID == bundleID &&
     other.created == created &&
     other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (projectID.hashCode) +
    (appIDPrefix.hashCode) +
    (bundleID.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'IOSAppConfigItem[id=$id, projectID=$projectID, appIDPrefix=$appIDPrefix, bundleID=$bundleID, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'projectID'] = this.projectID;
      json[r'appIDPrefix'] = this.appIDPrefix;
      json[r'bundleID'] = this.bundleID;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
    return json;
  }

  /// Returns a new [IOSAppConfigItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IOSAppConfigItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IOSAppConfigItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IOSAppConfigItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IOSAppConfigItem(
        id: mapValueOfType<String>(json, r'id')!,
        projectID: mapValueOfType<String>(json, r'projectID')!,
        appIDPrefix: mapValueOfType<String>(json, r'appIDPrefix')!,
        bundleID: mapValueOfType<String>(json, r'bundleID')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
      );
    }
    return null;
  }

  static List<IOSAppConfigItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IOSAppConfigItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IOSAppConfigItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IOSAppConfigItem> mapFromJson(dynamic json) {
    final map = <String, IOSAppConfigItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IOSAppConfigItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IOSAppConfigItem-objects as value to a dart map
  static Map<String, List<IOSAppConfigItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IOSAppConfigItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IOSAppConfigItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'projectID',
    'appIDPrefix',
    'bundleID',
    'created',
    'updated',
  };
}

