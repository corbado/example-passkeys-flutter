//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnRegisterFinishRsp {
  /// Returns a new [WebAuthnRegisterFinishRsp] instance.
  WebAuthnRegisterFinishRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.userID,
    required this.username,
    required this.credentialID,
    required this.status,
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

  /// Status represents information if user sign up was successful or if the user with provided credentials already exists
  WebAuthnRegisterFinishRspStatusEnum status;

  /// Optional user's full name to be used if the user wasn't found and needs to be created first
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userFullName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnRegisterFinishRsp &&
          other.httpStatusCode == httpStatusCode &&
          other.message == message &&
          other.requestData == requestData &&
          other.runtime == runtime &&
          other.userID == userID &&
          other.username == username &&
          other.credentialID == credentialID &&
          other.status == status &&
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
      (status.hashCode) +
      (userFullName == null ? 0 : userFullName!.hashCode);

  @override
  String toString() =>
      'WebAuthnRegisterFinishRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, userID=$userID, username=$username, credentialID=$credentialID, status=$status, userFullName=$userFullName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'httpStatusCode'] = this.httpStatusCode;
    json[r'message'] = this.message;
    json[r'requestData'] = this.requestData;
    json[r'runtime'] = this.runtime;
    json[r'userID'] = this.userID;
    json[r'username'] = this.username;
    json[r'credentialID'] = this.credentialID;
    json[r'status'] = this.status;
    if (this.userFullName != null) {
      json[r'userFullName'] = this.userFullName;
    } else {
      json[r'userFullName'] = null;
    }
    return json;
  }

  /// Returns a new [WebAuthnRegisterFinishRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnRegisterFinishRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnRegisterFinishRsp[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnRegisterFinishRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnRegisterFinishRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        username: mapValueOfType<String>(json, r'username')!,
        credentialID: mapValueOfType<String>(json, r'credentialID')!,
        status: WebAuthnRegisterFinishRspStatusEnum.fromJson(json[r'status'])!,
        userFullName: mapValueOfType<String>(json, r'userFullName'),
      );
    }
    return null;
  }

  static List<WebAuthnRegisterFinishRsp> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnRegisterFinishRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterFinishRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnRegisterFinishRsp> mapFromJson(dynamic json) {
    final map = <String, WebAuthnRegisterFinishRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnRegisterFinishRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnRegisterFinishRsp-objects as value to a dart map
  static Map<String, List<WebAuthnRegisterFinishRsp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnRegisterFinishRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnRegisterFinishRsp.listFromJson(
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
    'userID',
    'username',
    'credentialID',
    'status',
  };
}

/// Status represents information if user sign up was successful or if the user with provided credentials already exists
class WebAuthnRegisterFinishRspStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnRegisterFinishRspStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnRegisterFinishRspStatusEnum._(r'success');
  static const duplicate = WebAuthnRegisterFinishRspStatusEnum._(r'duplicate');

  /// List of all possible values in this [enum][WebAuthnRegisterFinishRspStatusEnum].
  static const values = <WebAuthnRegisterFinishRspStatusEnum>[
    success,
    duplicate,
  ];

  static WebAuthnRegisterFinishRspStatusEnum? fromJson(dynamic value) =>
      WebAuthnRegisterFinishRspStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnRegisterFinishRspStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnRegisterFinishRspStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterFinishRspStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnRegisterFinishRspStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnRegisterFinishRspStatusEnum].
class WebAuthnRegisterFinishRspStatusEnumTypeTransformer {
  factory WebAuthnRegisterFinishRspStatusEnumTypeTransformer() => _instance ??=
      const WebAuthnRegisterFinishRspStatusEnumTypeTransformer._();

  const WebAuthnRegisterFinishRspStatusEnumTypeTransformer._();

  String encode(WebAuthnRegisterFinishRspStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnRegisterFinishRspStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnRegisterFinishRspStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success':
          return WebAuthnRegisterFinishRspStatusEnum.success;
        case r'duplicate':
          return WebAuthnRegisterFinishRspStatusEnum.duplicate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnRegisterFinishRspStatusEnumTypeTransformer] instance.
  static WebAuthnRegisterFinishRspStatusEnumTypeTransformer? _instance;
}
