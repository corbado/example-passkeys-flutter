//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectListRspAllOfData {
  /// Returns a new [ProjectListRspAllOfData] instance.
  ProjectListRspAllOfData({
    this.projects = const [],
    required this.paging,
  });

  List<Project> projects;

  Paging paging;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectListRspAllOfData &&
     other.projects == projects &&
     other.paging == paging;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projects.hashCode) +
    (paging.hashCode);

  @override
  String toString() => 'ProjectListRspAllOfData[projects=$projects, paging=$paging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'projects'] = this.projects;
      json[r'paging'] = this.paging;
    return json;
  }

  /// Returns a new [ProjectListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectListRspAllOfData(
        projects: Project.listFromJson(json[r'projects']),
        paging: Paging.fromJson(json[r'paging'])!,
      );
    }
    return null;
  }

  static List<ProjectListRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectListRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, ProjectListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectListRspAllOfData-objects as value to a dart map
  static Map<String, List<ProjectListRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectListRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projects',
    'paging',
  };
}

