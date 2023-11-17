//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailCodeValidateRsp {
  /// Returns a new [EmailCodeValidateRsp] instance.
  EmailCodeValidateRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.userID,
    required this.userFullName,
    required this.userEmail,
    this.additionalPayload,
    this.loginToken,
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

  String userFullName;

  String userEmail;

  /// Additional payload in JSON format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? additionalPayload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailCodeValidateRsp &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.userID == userID &&
     other.userFullName == userFullName &&
     other.userEmail == userEmail &&
     other.additionalPayload == additionalPayload &&
     other.loginToken == loginToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (httpStatusCode.hashCode) +
    (message.hashCode) +
    (requestData.hashCode) +
    (runtime.hashCode) +
    (userID.hashCode) +
    (userFullName.hashCode) +
    (userEmail.hashCode) +
    (additionalPayload == null ? 0 : additionalPayload!.hashCode) +
    (loginToken == null ? 0 : loginToken!.hashCode);

  @override
  String toString() => 'EmailCodeValidateRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, userID=$userID, userFullName=$userFullName, userEmail=$userEmail, additionalPayload=$additionalPayload, loginToken=$loginToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'userID'] = this.userID;
      json[r'userFullName'] = this.userFullName;
      json[r'userEmail'] = this.userEmail;
    if (this.additionalPayload != null) {
      json[r'additionalPayload'] = this.additionalPayload;
    } else {
      json[r'additionalPayload'] = null;
    }
    if (this.loginToken != null) {
      json[r'loginToken'] = this.loginToken;
    } else {
      json[r'loginToken'] = null;
    }
    return json;
  }

  /// Returns a new [EmailCodeValidateRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailCodeValidateRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailCodeValidateRsp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailCodeValidateRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailCodeValidateRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        userFullName: mapValueOfType<String>(json, r'userFullName')!,
        userEmail: mapValueOfType<String>(json, r'userEmail')!,
        additionalPayload: mapValueOfType<String>(json, r'additionalPayload'),
        loginToken: mapValueOfType<String>(json, r'loginToken'),
      );
    }
    return null;
  }

  static List<EmailCodeValidateRsp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailCodeValidateRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailCodeValidateRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailCodeValidateRsp> mapFromJson(dynamic json) {
    final map = <String, EmailCodeValidateRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailCodeValidateRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailCodeValidateRsp-objects as value to a dart map
  static Map<String, List<EmailCodeValidateRsp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailCodeValidateRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailCodeValidateRsp.listFromJson(entry.value, growable: growable,);
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
    'userFullName',
    'userEmail',
  };
}

