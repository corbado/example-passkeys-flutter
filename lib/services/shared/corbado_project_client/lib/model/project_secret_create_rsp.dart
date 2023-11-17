//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectSecretCreateRsp {
  /// Returns a new [ProjectSecretCreateRsp] instance.
  ProjectSecretCreateRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.id,
    required this.hint,
    required this.created,
    this.secret,
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

  /// ID of project secret
  String id;

  /// Hint of the server-side generated secret. First 3 characters and last 3 characters
  String hint;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Server-side generated secret. Only filled on create
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectSecretCreateRsp &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.id == id &&
     other.hint == hint &&
     other.created == created &&
     other.secret == secret;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (httpStatusCode.hashCode) +
    (message.hashCode) +
    (requestData.hashCode) +
    (runtime.hashCode) +
    (id.hashCode) +
    (hint.hashCode) +
    (created.hashCode) +
    (secret == null ? 0 : secret!.hashCode);

  @override
  String toString() => 'ProjectSecretCreateRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, id=$id, hint=$hint, created=$created, secret=$secret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'id'] = this.id;
      json[r'hint'] = this.hint;
      json[r'created'] = this.created;
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectSecretCreateRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectSecretCreateRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectSecretCreateRsp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectSecretCreateRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectSecretCreateRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        id: mapValueOfType<String>(json, r'id')!,
        hint: mapValueOfType<String>(json, r'hint')!,
        created: mapValueOfType<String>(json, r'created')!,
        secret: mapValueOfType<String>(json, r'secret'),
      );
    }
    return null;
  }

  static List<ProjectSecretCreateRsp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectSecretCreateRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectSecretCreateRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectSecretCreateRsp> mapFromJson(dynamic json) {
    final map = <String, ProjectSecretCreateRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectSecretCreateRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectSecretCreateRsp-objects as value to a dart map
  static Map<String, List<ProjectSecretCreateRsp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectSecretCreateRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectSecretCreateRsp.listFromJson(entry.value, growable: growable,);
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
    'id',
    'hint',
    'created',
  };
}

