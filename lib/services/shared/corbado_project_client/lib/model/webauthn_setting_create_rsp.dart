//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebauthnSettingCreateRsp {
  /// Returns a new [WebauthnSettingCreateRsp] instance.
  WebauthnSettingCreateRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.name,
    required this.origin,
    required this.id,
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

  /// Name of this setting
  String name;

  /// Define here either a url incl. schema or an android-apk-key-hash
  String origin;

  /// ID of WebAuthn setting
  String id;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebauthnSettingCreateRsp &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.name == name &&
     other.origin == origin &&
     other.id == id &&
     other.created == created &&
     other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (httpStatusCode.hashCode) +
    (message.hashCode) +
    (requestData.hashCode) +
    (runtime.hashCode) +
    (name.hashCode) +
    (origin.hashCode) +
    (id.hashCode) +
    (created.hashCode) +
    (updated.hashCode);

  @override
  String toString() => 'WebauthnSettingCreateRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, name=$name, origin=$origin, id=$id, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'name'] = this.name;
      json[r'origin'] = this.origin;
      json[r'id'] = this.id;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
    return json;
  }

  /// Returns a new [WebauthnSettingCreateRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebauthnSettingCreateRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebauthnSettingCreateRsp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebauthnSettingCreateRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebauthnSettingCreateRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        name: mapValueOfType<String>(json, r'name')!,
        origin: mapValueOfType<String>(json, r'origin')!,
        id: mapValueOfType<String>(json, r'id')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
      );
    }
    return null;
  }

  static List<WebauthnSettingCreateRsp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebauthnSettingCreateRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebauthnSettingCreateRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebauthnSettingCreateRsp> mapFromJson(dynamic json) {
    final map = <String, WebauthnSettingCreateRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebauthnSettingCreateRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebauthnSettingCreateRsp-objects as value to a dart map
  static Map<String, List<WebauthnSettingCreateRsp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebauthnSettingCreateRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebauthnSettingCreateRsp.listFromJson(entry.value, growable: growable,);
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
    'name',
    'origin',
    'id',
    'created',
    'updated',
  };
}

