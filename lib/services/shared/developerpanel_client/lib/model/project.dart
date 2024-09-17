//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Project {
  /// Returns a new [Project] instance.
  Project({
    required this.projectID,
    required this.name,
    required this.created,
    required this.updated,
    this.description,
  });

  /// The ID of the project.
  String projectID;

  /// The name of the project.
  String name;

  String created;

  String updated;

  /// A brief description of the project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Project &&
          other.projectID == projectID &&
          other.name == name &&
          other.created == created &&
          other.updated == updated &&
          other.description == description;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (projectID.hashCode) +
      (name.hashCode) +
      (created.hashCode) +
      (updated.hashCode) +
      (description == null ? 0 : description!.hashCode);

  @override
  String toString() =>
      'Project[projectID=$projectID, name=$name, created=$created, updated=$updated, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'projectID'] = this.projectID;
    json[r'name'] = this.name;
    json[r'created'] = this.created;
    json[r'updated'] = this.updated;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [Project] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Project? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Project[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Project[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Project(
        projectID: mapValueOfType<String>(json, r'projectID')!,
        name: mapValueOfType<String>(json, r'name')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<Project> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Project>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Project.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Project> mapFromJson(dynamic json) {
    final map = <String, Project>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Project.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Project>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Project.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projectID',
    'name',
    'created',
    'updated',
  };
}
