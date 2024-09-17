//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnRegisterStartRsp {
  /// Returns a new [WebAuthnRegisterStartRsp] instance.
  WebAuthnRegisterStartRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.status,
    required this.publicKeyCredentialCreationOptions,
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

  /// Status represents information if user signup was successful or the user with its credentials already exists
  WebAuthnRegisterStartRspStatusEnum status;

  /// Contains JSON payload data to start Passkeys (Biometrics) sign up challenge
  String publicKeyCredentialCreationOptions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnRegisterStartRsp &&
          other.httpStatusCode == httpStatusCode &&
          other.message == message &&
          other.requestData == requestData &&
          other.runtime == runtime &&
          other.status == status &&
          other.publicKeyCredentialCreationOptions ==
              publicKeyCredentialCreationOptions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (httpStatusCode.hashCode) +
      (message.hashCode) +
      (requestData.hashCode) +
      (runtime.hashCode) +
      (status.hashCode) +
      (publicKeyCredentialCreationOptions.hashCode);

  @override
  String toString() =>
      'WebAuthnRegisterStartRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, status=$status, publicKeyCredentialCreationOptions=$publicKeyCredentialCreationOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'httpStatusCode'] = this.httpStatusCode;
    json[r'message'] = this.message;
    json[r'requestData'] = this.requestData;
    json[r'runtime'] = this.runtime;
    json[r'status'] = this.status;
    json[r'publicKeyCredentialCreationOptions'] =
        this.publicKeyCredentialCreationOptions;
    return json;
  }

  /// Returns a new [WebAuthnRegisterStartRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnRegisterStartRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnRegisterStartRsp[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnRegisterStartRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnRegisterStartRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        status: WebAuthnRegisterStartRspStatusEnum.fromJson(json[r'status'])!,
        publicKeyCredentialCreationOptions: mapValueOfType<String>(
            json, r'publicKeyCredentialCreationOptions')!,
      );
    }
    return null;
  }

  static List<WebAuthnRegisterStartRsp> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnRegisterStartRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterStartRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnRegisterStartRsp> mapFromJson(dynamic json) {
    final map = <String, WebAuthnRegisterStartRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnRegisterStartRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnRegisterStartRsp-objects as value to a dart map
  static Map<String, List<WebAuthnRegisterStartRsp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnRegisterStartRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnRegisterStartRsp.listFromJson(
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
    'status',
    'publicKeyCredentialCreationOptions',
  };
}

/// Status represents information if user signup was successful or the user with its credentials already exists
class WebAuthnRegisterStartRspStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnRegisterStartRspStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnRegisterStartRspStatusEnum._(r'success');
  static const duplicate = WebAuthnRegisterStartRspStatusEnum._(r'duplicate');

  /// List of all possible values in this [enum][WebAuthnRegisterStartRspStatusEnum].
  static const values = <WebAuthnRegisterStartRspStatusEnum>[
    success,
    duplicate,
  ];

  static WebAuthnRegisterStartRspStatusEnum? fromJson(dynamic value) =>
      WebAuthnRegisterStartRspStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnRegisterStartRspStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnRegisterStartRspStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterStartRspStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnRegisterStartRspStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnRegisterStartRspStatusEnum].
class WebAuthnRegisterStartRspStatusEnumTypeTransformer {
  factory WebAuthnRegisterStartRspStatusEnumTypeTransformer() =>
      _instance ??= const WebAuthnRegisterStartRspStatusEnumTypeTransformer._();

  const WebAuthnRegisterStartRspStatusEnumTypeTransformer._();

  String encode(WebAuthnRegisterStartRspStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnRegisterStartRspStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnRegisterStartRspStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success':
          return WebAuthnRegisterStartRspStatusEnum.success;
        case r'duplicate':
          return WebAuthnRegisterStartRspStatusEnum.duplicate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnRegisterStartRspStatusEnumTypeTransformer] instance.
  static WebAuthnRegisterStartRspStatusEnumTypeTransformer? _instance;
}
