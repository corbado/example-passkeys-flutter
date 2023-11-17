//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectPermissionListRspAllOfData {
  /// Returns a new [ProjectPermissionListRspAllOfData] instance.
  ProjectPermissionListRspAllOfData({
    this.permissions = const [],
  });

  List<ProjectPermission> permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectPermissionListRspAllOfData &&
     other.permissions == permissions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (permissions.hashCode);

  @override
  String toString() => 'ProjectPermissionListRspAllOfData[permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'permissions'] = this.permissions;
    return json;
  }

  /// Returns a new [ProjectPermissionListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectPermissionListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectPermissionListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectPermissionListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectPermissionListRspAllOfData(
        permissions: ProjectPermission.listFromJson(json[r'permissions']),
      );
    }
    return null;
  }

  static List<ProjectPermissionListRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectPermissionListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectPermissionListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectPermissionListRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, ProjectPermissionListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectPermissionListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectPermissionListRspAllOfData-objects as value to a dart map
  static Map<String, List<ProjectPermissionListRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectPermissionListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectPermissionListRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'permissions',
  };
}

