//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnAuthenticateSuccess {
  /// Returns a new [WebAuthnAuthenticateSuccess] instance.
  WebAuthnAuthenticateSuccess({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.userID,
    required this.username,
    required this.credentialID,
    this.userFullName,
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

  /// ID of the user
  String userID;

  /// Username of current challenge
  String username;

  /// Used credential ID
  String credentialID;

  /// Optional user's full name to be used if the user wasn't found and needs to be created first
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userFullName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebAuthnAuthenticateSuccess &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.userID == userID &&
     other.username == username &&
     other.credentialID == credentialID &&
     other.userFullName == userFullName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (httpStatusCode.hashCode) +
    (message.hashCode) +
    (requestData.hashCode) +
    (runtime.hashCode) +
    (userID.hashCode) +
    (username.hashCode) +
    (credentialID.hashCode) +
    (userFullName == null ? 0 : userFullName!.hashCode);

  @override
  String toString() => 'WebAuthnAuthenticateSuccess[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, userID=$userID, username=$username, credentialID=$credentialID, userFullName=$userFullName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'userID'] = this.userID;
      json[r'username'] = this.username;
      json[r'credentialID'] = this.credentialID;
    if (this.userFullName != null) {
      json[r'userFullName'] = this.userFullName;
    } else {
      json[r'userFullName'] = null;
    }
    return json;
  }

  /// Returns a new [WebAuthnAuthenticateSuccess] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnAuthenticateSuccess? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebAuthnAuthenticateSuccess[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebAuthnAuthenticateSuccess[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnAuthenticateSuccess(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        username: mapValueOfType<String>(json, r'username')!,
        credentialID: mapValueOfType<String>(json, r'credentialID')!,
        userFullName: mapValueOfType<String>(json, r'userFullName'),
      );
    }
    return null;
  }

  static List<WebAuthnAuthenticateSuccess> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnAuthenticateSuccess>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateSuccess.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnAuthenticateSuccess> mapFromJson(dynamic json) {
    final map = <String, WebAuthnAuthenticateSuccess>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnAuthenticateSuccess.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnAuthenticateSuccess-objects as value to a dart map
  static Map<String, List<WebAuthnAuthenticateSuccess>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebAuthnAuthenticateSuccess>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnAuthenticateSuccess.listFromJson(entry.value, growable: growable,);
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
    'userID',
    'username',
    'credentialID',
  };
}

