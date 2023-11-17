//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectPermission {
  /// Returns a new [ProjectPermission] instance.
  ProjectPermission({
    required this.projectID,
    required this.name,
    required this.email,
    required this.created,
  });

  String projectID;

  String name;

  String email;

  /// Timestamp in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectPermission &&
     other.projectID == projectID &&
     other.name == name &&
     other.email == email &&
     other.created == created;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectID.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (created.hashCode);

  @override
  String toString() => 'ProjectPermission[projectID=$projectID, name=$name, email=$email, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'projectID'] = this.projectID;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'created'] = this.created;
    return json;
  }

  /// Returns a new [ProjectPermission] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectPermission? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectPermission[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectPermission[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectPermission(
        projectID: mapValueOfType<String>(json, r'projectID')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        created: mapValueOfType<String>(json, r'created')!,
      );
    }
    return null;
  }

  static List<ProjectPermission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectPermission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectPermission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectPermission> mapFromJson(dynamic json) {
    final map = <String, ProjectPermission>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectPermission.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectPermission-objects as value to a dart map
  static Map<String, List<ProjectPermission>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectPermission>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectPermission.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projectID',
    'name',
    'email',
    'created',
  };
}

