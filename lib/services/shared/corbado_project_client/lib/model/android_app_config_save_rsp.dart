//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AndroidAppConfigSaveRsp {
  /// Returns a new [AndroidAppConfigSaveRsp] instance.
  AndroidAppConfigSaveRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.id,
    required this.projectID,
    required this.packageName,
    required this.fingerprint,
    required this.base64URL,
    required this.created,
    required this.updated,
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

  /// ID of Android app configuration
  String id;

  /// ID of project
  String projectID;

  String packageName;

  String fingerprint;

  String base64URL;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AndroidAppConfigSaveRsp &&
          other.httpStatusCode == httpStatusCode &&
          other.message == message &&
          other.requestData == requestData &&
          other.runtime == runtime &&
          other.id == id &&
          other.projectID == projectID &&
          other.packageName == packageName &&
          other.fingerprint == fingerprint &&
          other.base64URL == base64URL &&
          other.created == created &&
          other.updated == updated;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (httpStatusCode.hashCode) +
      (message.hashCode) +
      (requestData.hashCode) +
      (runtime.hashCode) +
      (id.hashCode) +
      (projectID.hashCode) +
      (packageName.hashCode) +
      (fingerprint.hashCode) +
      (base64URL.hashCode) +
      (created.hashCode) +
      (updated.hashCode);

  @override
  String toString() =>
      'AndroidAppConfigSaveRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, id=$id, projectID=$projectID, packageName=$packageName, fingerprint=$fingerprint, base64URL=$base64URL, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'httpStatusCode'] = this.httpStatusCode;
    json[r'message'] = this.message;
    json[r'requestData'] = this.requestData;
    json[r'runtime'] = this.runtime;
    json[r'id'] = this.id;
    json[r'projectID'] = this.projectID;
    json[r'packageName'] = this.packageName;
    json[r'fingerprint'] = this.fingerprint;
    json[r'base64URL'] = this.base64URL;
    json[r'created'] = this.created;
    json[r'updated'] = this.updated;
    return json;
  }

  /// Returns a new [AndroidAppConfigSaveRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AndroidAppConfigSaveRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AndroidAppConfigSaveRsp[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AndroidAppConfigSaveRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AndroidAppConfigSaveRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        id: mapValueOfType<String>(json, r'id')!,
        projectID: mapValueOfType<String>(json, r'projectID')!,
        packageName: mapValueOfType<String>(json, r'packageName')!,
        fingerprint: mapValueOfType<String>(json, r'fingerprint')!,
        base64URL: mapValueOfType<String>(json, r'base64URL')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
      );
    }
    return null;
  }

  static List<AndroidAppConfigSaveRsp> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AndroidAppConfigSaveRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AndroidAppConfigSaveRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AndroidAppConfigSaveRsp> mapFromJson(dynamic json) {
    final map = <String, AndroidAppConfigSaveRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AndroidAppConfigSaveRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AndroidAppConfigSaveRsp-objects as value to a dart map
  static Map<String, List<AndroidAppConfigSaveRsp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AndroidAppConfigSaveRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AndroidAppConfigSaveRsp.listFromJson(
          entry.value,
          growable: growable,
        );
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
    'projectID',
    'packageName',
    'fingerprint',
    'base64URL',
    'created',
    'updated',
  };
}
