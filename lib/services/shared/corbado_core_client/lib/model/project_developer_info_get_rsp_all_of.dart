//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectDeveloperInfoGetRspAllOf {
  /// Returns a new [ProjectDeveloperInfoGetRspAllOf] instance.
  ProjectDeveloperInfoGetRspAllOf({
    required this.programmingLanguageFrontend,
    required this.programmingLanguageBackend,
    required this.integrationTarget,
  });

  String programmingLanguageFrontend;

  String programmingLanguageBackend;

  String integrationTarget;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectDeveloperInfoGetRspAllOf &&
     other.programmingLanguageFrontend == programmingLanguageFrontend &&
     other.programmingLanguageBackend == programmingLanguageBackend &&
     other.integrationTarget == integrationTarget;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programmingLanguageFrontend.hashCode) +
    (programmingLanguageBackend.hashCode) +
    (integrationTarget.hashCode);

  @override
  String toString() => 'ProjectDeveloperInfoGetRspAllOf[programmingLanguageFrontend=$programmingLanguageFrontend, programmingLanguageBackend=$programmingLanguageBackend, integrationTarget=$integrationTarget]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programmingLanguageFrontend'] = this.programmingLanguageFrontend;
      json[r'programmingLanguageBackend'] = this.programmingLanguageBackend;
      json[r'integrationTarget'] = this.integrationTarget;
    return json;
  }

  /// Returns a new [ProjectDeveloperInfoGetRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectDeveloperInfoGetRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectDeveloperInfoGetRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectDeveloperInfoGetRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectDeveloperInfoGetRspAllOf(
        programmingLanguageFrontend: mapValueOfType<String>(json, r'programmingLanguageFrontend')!,
        programmingLanguageBackend: mapValueOfType<String>(json, r'programmingLanguageBackend')!,
        integrationTarget: mapValueOfType<String>(json, r'integrationTarget')!,
      );
    }
    return null;
  }

  static List<ProjectDeveloperInfoGetRspAllOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectDeveloperInfoGetRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectDeveloperInfoGetRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectDeveloperInfoGetRspAllOf> mapFromJson(dynamic json) {
    final map = <String, ProjectDeveloperInfoGetRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectDeveloperInfoGetRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectDeveloperInfoGetRspAllOf-objects as value to a dart map
  static Map<String, List<ProjectDeveloperInfoGetRspAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectDeveloperInfoGetRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectDeveloperInfoGetRspAllOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programmingLanguageFrontend',
    'programmingLanguageBackend',
    'integrationTarget',
  };
}

