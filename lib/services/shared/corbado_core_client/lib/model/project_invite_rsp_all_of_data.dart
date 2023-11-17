//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectInviteRspAllOfData {
  /// Returns a new [ProjectInviteRspAllOfData] instance.
  ProjectInviteRspAllOfData({
    required this.projectID,
    required this.inviteID,
  });

  String projectID;

  String inviteID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectInviteRspAllOfData &&
     other.projectID == projectID &&
     other.inviteID == inviteID;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectID.hashCode) +
    (inviteID.hashCode);

  @override
  String toString() => 'ProjectInviteRspAllOfData[projectID=$projectID, inviteID=$inviteID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'projectID'] = this.projectID;
      json[r'inviteID'] = this.inviteID;
    return json;
  }

  /// Returns a new [ProjectInviteRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectInviteRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectInviteRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectInviteRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectInviteRspAllOfData(
        projectID: mapValueOfType<String>(json, r'projectID')!,
        inviteID: mapValueOfType<String>(json, r'inviteID')!,
      );
    }
    return null;
  }

  static List<ProjectInviteRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectInviteRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectInviteRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectInviteRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, ProjectInviteRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectInviteRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectInviteRspAllOfData-objects as value to a dart map
  static Map<String, List<ProjectInviteRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectInviteRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectInviteRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projectID',
    'inviteID',
  };
}

