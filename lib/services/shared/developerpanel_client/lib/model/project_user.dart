//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectUser {
  /// Returns a new [ProjectUser] instance.
  ProjectUser({
    required this.ID,
    required this.fullName,
    required this.created,
  });

  /// The ID of the user.
  String ID;

  /// The full name of the user.
  String fullName;

  /// The date and time the user was added to the project.
  String created;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectUser &&
          other.ID == ID &&
          other.fullName == fullName &&
          other.created == created;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID.hashCode) + (fullName.hashCode) + (created.hashCode);

  @override
  String toString() =>
      'ProjectUser[ID=$ID, fullName=$fullName, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'ID'] = this.ID;
    json[r'fullName'] = this.fullName;
    json[r'created'] = this.created;
    return json;
  }

  /// Returns a new [ProjectUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ProjectUser[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ProjectUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectUser(
        ID: mapValueOfType<String>(json, r'ID')!,
        fullName: mapValueOfType<String>(json, r'fullName')!,
        created: mapValueOfType<String>(json, r'created')!,
      );
    }
    return null;
  }

  static List<ProjectUser> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectUser> mapFromJson(dynamic json) {
    final map = <String, ProjectUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectUser-objects as value to a dart map
  static Map<String, List<ProjectUser>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProjectUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectUser.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ID',
    'fullName',
    'created',
  };
}
