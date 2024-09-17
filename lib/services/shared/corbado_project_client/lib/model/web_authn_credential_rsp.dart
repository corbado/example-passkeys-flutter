//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnCredentialRsp {
  /// Returns a new [WebAuthnCredentialRsp] instance.
  WebAuthnCredentialRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
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

  /// Status
  WebAuthnCredentialRspStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnCredentialRsp &&
          other.httpStatusCode == httpStatusCode &&
          other.message == message &&
          other.requestData == requestData &&
          other.runtime == runtime &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (httpStatusCode.hashCode) +
      (message.hashCode) +
      (requestData.hashCode) +
      (runtime.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'WebAuthnCredentialRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'httpStatusCode'] = this.httpStatusCode;
    json[r'message'] = this.message;
    json[r'requestData'] = this.requestData;
    json[r'runtime'] = this.runtime;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [WebAuthnCredentialRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnCredentialRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnCredentialRsp[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnCredentialRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnCredentialRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        status: WebAuthnCredentialRspStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<WebAuthnCredentialRsp> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnCredentialRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnCredentialRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnCredentialRsp> mapFromJson(dynamic json) {
    final map = <String, WebAuthnCredentialRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnCredentialRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnCredentialRsp-objects as value to a dart map
  static Map<String, List<WebAuthnCredentialRsp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnCredentialRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnCredentialRsp.listFromJson(
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
  };
}

/// Status
class WebAuthnCredentialRspStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnCredentialRspStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = WebAuthnCredentialRspStatusEnum._(r'pending');
  static const active = WebAuthnCredentialRspStatusEnum._(r'active');
  static const deleted = WebAuthnCredentialRspStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][WebAuthnCredentialRspStatusEnum].
  static const values = <WebAuthnCredentialRspStatusEnum>[
    pending,
    active,
    deleted,
  ];

  static WebAuthnCredentialRspStatusEnum? fromJson(dynamic value) =>
      WebAuthnCredentialRspStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnCredentialRspStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnCredentialRspStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnCredentialRspStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnCredentialRspStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnCredentialRspStatusEnum].
class WebAuthnCredentialRspStatusEnumTypeTransformer {
  factory WebAuthnCredentialRspStatusEnumTypeTransformer() =>
      _instance ??= const WebAuthnCredentialRspStatusEnumTypeTransformer._();

  const WebAuthnCredentialRspStatusEnumTypeTransformer._();

  String encode(WebAuthnCredentialRspStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnCredentialRspStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnCredentialRspStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending':
          return WebAuthnCredentialRspStatusEnum.pending;
        case r'active':
          return WebAuthnCredentialRspStatusEnum.active;
        case r'deleted':
          return WebAuthnCredentialRspStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnCredentialRspStatusEnumTypeTransformer] instance.
  static WebAuthnCredentialRspStatusEnumTypeTransformer? _instance;
}
