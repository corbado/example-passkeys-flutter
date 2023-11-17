//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectDeveloperInfoCreateReq {
  /// Returns a new [ProjectDeveloperInfoCreateReq] instance.
  ProjectDeveloperInfoCreateReq({
    required this.programmingLanguageFrontend,
    required this.programmingLanguageBackend,
    required this.integrationTarget,
    this.requestID,
    this.clientInfo,
  });

  String programmingLanguageFrontend;

  String programmingLanguageBackend;

  String integrationTarget;

  /// Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClientInfo? clientInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectDeveloperInfoCreateReq &&
     other.programmingLanguageFrontend == programmingLanguageFrontend &&
     other.programmingLanguageBackend == programmingLanguageBackend &&
     other.integrationTarget == integrationTarget &&
     other.requestID == requestID &&
     other.clientInfo == clientInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programmingLanguageFrontend.hashCode) +
    (programmingLanguageBackend.hashCode) +
    (integrationTarget.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() => 'ProjectDeveloperInfoCreateReq[programmingLanguageFrontend=$programmingLanguageFrontend, programmingLanguageBackend=$programmingLanguageBackend, integrationTarget=$integrationTarget, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programmingLanguageFrontend'] = this.programmingLanguageFrontend;
      json[r'programmingLanguageBackend'] = this.programmingLanguageBackend;
      json[r'integrationTarget'] = this.integrationTarget;
    if (this.requestID != null) {
      json[r'requestID'] = this.requestID;
    } else {
      json[r'requestID'] = null;
    }
    if (this.clientInfo != null) {
      json[r'clientInfo'] = this.clientInfo;
    } else {
      json[r'clientInfo'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectDeveloperInfoCreateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectDeveloperInfoCreateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectDeveloperInfoCreateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectDeveloperInfoCreateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectDeveloperInfoCreateReq(
        programmingLanguageFrontend: mapValueOfType<String>(json, r'programmingLanguageFrontend')!,
        programmingLanguageBackend: mapValueOfType<String>(json, r'programmingLanguageBackend')!,
        integrationTarget: mapValueOfType<String>(json, r'integrationTarget')!,
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<ProjectDeveloperInfoCreateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectDeveloperInfoCreateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectDeveloperInfoCreateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectDeveloperInfoCreateReq> mapFromJson(dynamic json) {
    final map = <String, ProjectDeveloperInfoCreateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectDeveloperInfoCreateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectDeveloperInfoCreateReq-objects as value to a dart map
  static Map<String, List<ProjectDeveloperInfoCreateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectDeveloperInfoCreateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectDeveloperInfoCreateReq.listFromJson(entry.value, growable: growable,);
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

