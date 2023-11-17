//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnAssociateStartRsp {
  /// Returns a new [WebAuthnAssociateStartRsp] instance.
  WebAuthnAssociateStartRsp({
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
  WebAuthnAssociateStartRspStatusEnum status;

  /// Contains JSON payload data to start Passkeys (Biometrics) sign up challenge
  String publicKeyCredentialCreationOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebAuthnAssociateStartRsp &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.status == status &&
     other.publicKeyCredentialCreationOptions == publicKeyCredentialCreationOptions;

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
  String toString() => 'WebAuthnAssociateStartRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, status=$status, publicKeyCredentialCreationOptions=$publicKeyCredentialCreationOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'status'] = this.status;
      json[r'publicKeyCredentialCreationOptions'] = this.publicKeyCredentialCreationOptions;
    return json;
  }

  /// Returns a new [WebAuthnAssociateStartRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnAssociateStartRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebAuthnAssociateStartRsp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebAuthnAssociateStartRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnAssociateStartRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        status: WebAuthnAssociateStartRspStatusEnum.fromJson(json[r'status'])!,
        publicKeyCredentialCreationOptions: mapValueOfType<String>(json, r'publicKeyCredentialCreationOptions')!,
      );
    }
    return null;
  }

  static List<WebAuthnAssociateStartRsp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnAssociateStartRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAssociateStartRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnAssociateStartRsp> mapFromJson(dynamic json) {
    final map = <String, WebAuthnAssociateStartRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnAssociateStartRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnAssociateStartRsp-objects as value to a dart map
  static Map<String, List<WebAuthnAssociateStartRsp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebAuthnAssociateStartRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnAssociateStartRsp.listFromJson(entry.value, growable: growable,);
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
class WebAuthnAssociateStartRspStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnAssociateStartRspStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnAssociateStartRspStatusEnum._(r'success');
  static const duplicate = WebAuthnAssociateStartRspStatusEnum._(r'duplicate');

  /// List of all possible values in this [enum][WebAuthnAssociateStartRspStatusEnum].
  static const values = <WebAuthnAssociateStartRspStatusEnum>[
    success,
    duplicate,
  ];

  static WebAuthnAssociateStartRspStatusEnum? fromJson(dynamic value) => WebAuthnAssociateStartRspStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnAssociateStartRspStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnAssociateStartRspStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAssociateStartRspStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnAssociateStartRspStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnAssociateStartRspStatusEnum].
class WebAuthnAssociateStartRspStatusEnumTypeTransformer {
  factory WebAuthnAssociateStartRspStatusEnumTypeTransformer() => _instance ??= const WebAuthnAssociateStartRspStatusEnumTypeTransformer._();

  const WebAuthnAssociateStartRspStatusEnumTypeTransformer._();

  String encode(WebAuthnAssociateStartRspStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnAssociateStartRspStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnAssociateStartRspStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success': return WebAuthnAssociateStartRspStatusEnum.success;
        case r'duplicate': return WebAuthnAssociateStartRspStatusEnum.duplicate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnAssociateStartRspStatusEnumTypeTransformer] instance.
  static WebAuthnAssociateStartRspStatusEnumTypeTransformer? _instance;
}


