//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnAuthenticateStartRsp {
  /// Returns a new [WebAuthnAuthenticateStartRsp] instance.
  WebAuthnAuthenticateStartRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.publicKeyCredentialRequestOptions,
    required this.status,
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

  /// Contains JSON payload data to start Passkeys (Biometrics) login challenge
  String publicKeyCredentialRequestOptions;

  /// Status represents information if authenticate start was successful or device is unknown
  WebAuthnAuthenticateStartRspStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnAuthenticateStartRsp &&
          other.httpStatusCode == httpStatusCode &&
          other.message == message &&
          other.requestData == requestData &&
          other.runtime == runtime &&
          other.publicKeyCredentialRequestOptions ==
              publicKeyCredentialRequestOptions &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (httpStatusCode.hashCode) +
      (message.hashCode) +
      (requestData.hashCode) +
      (runtime.hashCode) +
      (publicKeyCredentialRequestOptions.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'WebAuthnAuthenticateStartRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, publicKeyCredentialRequestOptions=$publicKeyCredentialRequestOptions, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'httpStatusCode'] = this.httpStatusCode;
    json[r'message'] = this.message;
    json[r'requestData'] = this.requestData;
    json[r'runtime'] = this.runtime;
    json[r'publicKeyCredentialRequestOptions'] =
        this.publicKeyCredentialRequestOptions;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [WebAuthnAuthenticateStartRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnAuthenticateStartRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnAuthenticateStartRsp[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnAuthenticateStartRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnAuthenticateStartRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        publicKeyCredentialRequestOptions:
            mapValueOfType<String>(json, r'publicKeyCredentialRequestOptions')!,
        status:
            WebAuthnAuthenticateStartRspStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<WebAuthnAuthenticateStartRsp> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnAuthenticateStartRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateStartRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnAuthenticateStartRsp> mapFromJson(dynamic json) {
    final map = <String, WebAuthnAuthenticateStartRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnAuthenticateStartRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnAuthenticateStartRsp-objects as value to a dart map
  static Map<String, List<WebAuthnAuthenticateStartRsp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnAuthenticateStartRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnAuthenticateStartRsp.listFromJson(
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
    'publicKeyCredentialRequestOptions',
    'status',
  };
}

/// Status represents information if authenticate start was successful or device is unknown
class WebAuthnAuthenticateStartRspStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnAuthenticateStartRspStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnAuthenticateStartRspStatusEnum._(r'success');
  static const unknownDevice =
      WebAuthnAuthenticateStartRspStatusEnum._(r'unknownDevice');
  static const unconfirmedDevice =
      WebAuthnAuthenticateStartRspStatusEnum._(r'unconfirmedDevice');

  /// List of all possible values in this [enum][WebAuthnAuthenticateStartRspStatusEnum].
  static const values = <WebAuthnAuthenticateStartRspStatusEnum>[
    success,
    unknownDevice,
    unconfirmedDevice,
  ];

  static WebAuthnAuthenticateStartRspStatusEnum? fromJson(dynamic value) =>
      WebAuthnAuthenticateStartRspStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnAuthenticateStartRspStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnAuthenticateStartRspStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateStartRspStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnAuthenticateStartRspStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnAuthenticateStartRspStatusEnum].
class WebAuthnAuthenticateStartRspStatusEnumTypeTransformer {
  factory WebAuthnAuthenticateStartRspStatusEnumTypeTransformer() =>
      _instance ??=
          const WebAuthnAuthenticateStartRspStatusEnumTypeTransformer._();

  const WebAuthnAuthenticateStartRspStatusEnumTypeTransformer._();

  String encode(WebAuthnAuthenticateStartRspStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnAuthenticateStartRspStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnAuthenticateStartRspStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success':
          return WebAuthnAuthenticateStartRspStatusEnum.success;
        case r'unknownDevice':
          return WebAuthnAuthenticateStartRspStatusEnum.unknownDevice;
        case r'unconfirmedDevice':
          return WebAuthnAuthenticateStartRspStatusEnum.unconfirmedDevice;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnAuthenticateStartRspStatusEnumTypeTransformer] instance.
  static WebAuthnAuthenticateStartRspStatusEnumTypeTransformer? _instance;
}
