//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectInviteListRspAllOfData {
  /// Returns a new [ProjectInviteListRspAllOfData] instance.
  ProjectInviteListRspAllOfData({
    this.invites = const [],
  });

  List<ProjectInvite> invites;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectInviteListRspAllOfData &&
     other.invites == invites;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invites.hashCode);

  @override
  String toString() => 'ProjectInviteListRspAllOfData[invites=$invites]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'invites'] = this.invites;
    return json;
  }

  /// Returns a new [ProjectInviteListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectInviteListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectInviteListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectInviteListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectInviteListRspAllOfData(
        invites: ProjectInvite.listFromJson(json[r'invites']),
      );
    }
    return null;
  }

  static List<ProjectInviteListRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectInviteListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectInviteListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectInviteListRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, ProjectInviteListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectInviteListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectInviteListRspAllOfData-objects as value to a dart map
  static Map<String, List<ProjectInviteListRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectInviteListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectInviteListRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'invites',
  };
}

