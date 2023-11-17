//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectCreateResult {
  /// Returns a new [ProjectCreateResult] instance.
  ProjectCreateResult({
    required this.project,
    required this.externalAddress,
    required this.internalPublicAddress,
    required this.internalPrivateAddress,
  });

  Project project;

  String externalAddress;

  String internalPublicAddress;

  String internalPrivateAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectCreateResult &&
     other.project == project &&
     other.externalAddress == externalAddress &&
     other.internalPublicAddress == internalPublicAddress &&
     other.internalPrivateAddress == internalPrivateAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (project.hashCode) +
    (externalAddress.hashCode) +
    (internalPublicAddress.hashCode) +
    (internalPrivateAddress.hashCode);

  @override
  String toString() => 'ProjectCreateResult[project=$project, externalAddress=$externalAddress, internalPublicAddress=$internalPublicAddress, internalPrivateAddress=$internalPrivateAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'project'] = this.project;
      json[r'externalAddress'] = this.externalAddress;
      json[r'internalPublicAddress'] = this.internalPublicAddress;
      json[r'internalPrivateAddress'] = this.internalPrivateAddress;
    return json;
  }

  /// Returns a new [ProjectCreateResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectCreateResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectCreateResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectCreateResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectCreateResult(
        project: Project.fromJson(json[r'project'])!,
        externalAddress: mapValueOfType<String>(json, r'externalAddress')!,
        internalPublicAddress: mapValueOfType<String>(json, r'internalPublicAddress')!,
        internalPrivateAddress: mapValueOfType<String>(json, r'internalPrivateAddress')!,
      );
    }
    return null;
  }

  static List<ProjectCreateResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCreateResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCreateResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectCreateResult> mapFromJson(dynamic json) {
    final map = <String, ProjectCreateResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectCreateResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectCreateResult-objects as value to a dart map
  static Map<String, List<ProjectCreateResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectCreateResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectCreateResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project',
    'externalAddress',
    'internalPublicAddress',
    'internalPrivateAddress',
  };
}

