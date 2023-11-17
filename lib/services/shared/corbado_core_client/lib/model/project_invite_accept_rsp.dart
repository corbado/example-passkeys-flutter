//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectInviteAcceptRsp {
  /// Returns a new [ProjectInviteAcceptRsp] instance.
  ProjectInviteAcceptRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.loginToken,
  });

  /// HTTP status code of operation
  ///
  /// Minimum value: 200
  /// Maximum value: 599
  int httpStatusCode;

  String message;

  RequestData requestData;

  /// Runtime in seconds for this request
  double runtime;

  String loginToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectInviteAcceptRsp &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.loginToken == loginToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (httpStatusCode.hashCode) +
    (message.hashCode) +
    (requestData.hashCode) +
    (runtime.hashCode) +
    (loginToken.hashCode);

  @override
  String toString() => 'ProjectInviteAcceptRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, loginToken=$loginToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'loginToken'] = this.loginToken;
    return json;
  }

  /// Returns a new [ProjectInviteAcceptRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectInviteAcceptRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectInviteAcceptRsp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectInviteAcceptRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectInviteAcceptRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        loginToken: mapValueOfType<String>(json, r'loginToken')!,
      );
    }
    return null;
  }

  static List<ProjectInviteAcceptRsp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectInviteAcceptRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectInviteAcceptRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectInviteAcceptRsp> mapFromJson(dynamic json) {
    final map = <String, ProjectInviteAcceptRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectInviteAcceptRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectInviteAcceptRsp-objects as value to a dart map
  static Map<String, List<ProjectInviteAcceptRsp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectInviteAcceptRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectInviteAcceptRsp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'httpStatusCode',
    'message',
    'requestData',
    'runtime',
    'loginToken',
  };
}

