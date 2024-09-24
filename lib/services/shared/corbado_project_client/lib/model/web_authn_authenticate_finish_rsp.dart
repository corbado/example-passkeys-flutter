//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnAuthenticateFinishRsp {
  /// Returns a new [WebAuthnAuthenticateFinishRsp] instance.
  WebAuthnAuthenticateFinishRsp({
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

  /// Status represents information if user signup was successful or the user with its credentials already exists
  WebAuthnAuthenticateFinishRspStatusEnum status;

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
      other is WebAuthnAuthenticateFinishRsp &&
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
      'WebAuthnAuthenticateFinishRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, userID=$userID, username=$username, credentialID=$credentialID, status=$status, userFullName=$userFullName]';

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

  /// Returns a new [WebAuthnAuthenticateFinishRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnAuthenticateFinishRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnAuthenticateFinishRsp[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnAuthenticateFinishRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnAuthenticateFinishRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        username: mapValueOfType<String>(json, r'username')!,
        credentialID: mapValueOfType<String>(json, r'credentialID')!,
        status:
            WebAuthnAuthenticateFinishRspStatusEnum.fromJson(json[r'status'])!,
        userFullName: mapValueOfType<String>(json, r'userFullName'),
      );
    }
    return null;
  }

  static List<WebAuthnAuthenticateFinishRsp> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnAuthenticateFinishRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateFinishRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnAuthenticateFinishRsp> mapFromJson(dynamic json) {
    final map = <String, WebAuthnAuthenticateFinishRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnAuthenticateFinishRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnAuthenticateFinishRsp-objects as value to a dart map
  static Map<String, List<WebAuthnAuthenticateFinishRsp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnAuthenticateFinishRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnAuthenticateFinishRsp.listFromJson(
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

/// Status represents information if user signup was successful or the user with its credentials already exists
class WebAuthnAuthenticateFinishRspStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnAuthenticateFinishRspStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnAuthenticateFinishRspStatusEnum._(r'success');
  static const unconfirmedCredential =
      WebAuthnAuthenticateFinishRspStatusEnum._(r'unconfirmedCredential');

  /// List of all possible values in this [enum][WebAuthnAuthenticateFinishRspStatusEnum].
  static const values = <WebAuthnAuthenticateFinishRspStatusEnum>[
    success,
    unconfirmedCredential,
  ];

  static WebAuthnAuthenticateFinishRspStatusEnum? fromJson(dynamic value) =>
      WebAuthnAuthenticateFinishRspStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnAuthenticateFinishRspStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnAuthenticateFinishRspStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateFinishRspStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnAuthenticateFinishRspStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnAuthenticateFinishRspStatusEnum].
class WebAuthnAuthenticateFinishRspStatusEnumTypeTransformer {
  factory WebAuthnAuthenticateFinishRspStatusEnumTypeTransformer() =>
      _instance ??=
          const WebAuthnAuthenticateFinishRspStatusEnumTypeTransformer._();

  const WebAuthnAuthenticateFinishRspStatusEnumTypeTransformer._();

  String encode(WebAuthnAuthenticateFinishRspStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnAuthenticateFinishRspStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnAuthenticateFinishRspStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success':
          return WebAuthnAuthenticateFinishRspStatusEnum.success;
        case r'unconfirmedCredential':
          return WebAuthnAuthenticateFinishRspStatusEnum.unconfirmedCredential;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnAuthenticateFinishRspStatusEnumTypeTransformer] instance.
  static WebAuthnAuthenticateFinishRspStatusEnumTypeTransformer? _instance;
}
