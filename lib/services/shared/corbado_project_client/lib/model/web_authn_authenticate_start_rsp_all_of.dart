//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnAuthenticateStartRspAllOf {
  /// Returns a new [WebAuthnAuthenticateStartRspAllOf] instance.
  WebAuthnAuthenticateStartRspAllOf({
    required this.publicKeyCredentialRequestOptions,
    required this.status,
  });

  /// Contains JSON payload data to start Passkeys (Biometrics) login challenge
  String publicKeyCredentialRequestOptions;

  /// Status represents information if authenticate start was successful or device is unknown
  WebAuthnAuthenticateStartRspAllOfStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnAuthenticateStartRspAllOf &&
          other.publicKeyCredentialRequestOptions ==
              publicKeyCredentialRequestOptions &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (publicKeyCredentialRequestOptions.hashCode) + (status.hashCode);

  @override
  String toString() =>
      'WebAuthnAuthenticateStartRspAllOf[publicKeyCredentialRequestOptions=$publicKeyCredentialRequestOptions, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'publicKeyCredentialRequestOptions'] =
        this.publicKeyCredentialRequestOptions;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [WebAuthnAuthenticateStartRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnAuthenticateStartRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnAuthenticateStartRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnAuthenticateStartRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnAuthenticateStartRspAllOf(
        publicKeyCredentialRequestOptions:
            mapValueOfType<String>(json, r'publicKeyCredentialRequestOptions')!,
        status: WebAuthnAuthenticateStartRspAllOfStatusEnum.fromJson(
            json[r'status'])!,
      );
    }
    return null;
  }

  static List<WebAuthnAuthenticateStartRspAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnAuthenticateStartRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateStartRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnAuthenticateStartRspAllOf> mapFromJson(
      dynamic json) {
    final map = <String, WebAuthnAuthenticateStartRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnAuthenticateStartRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnAuthenticateStartRspAllOf-objects as value to a dart map
  static Map<String, List<WebAuthnAuthenticateStartRspAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnAuthenticateStartRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnAuthenticateStartRspAllOf.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'publicKeyCredentialRequestOptions',
    'status',
  };
}

/// Status represents information if authenticate start was successful or device is unknown
class WebAuthnAuthenticateStartRspAllOfStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnAuthenticateStartRspAllOfStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success =
      WebAuthnAuthenticateStartRspAllOfStatusEnum._(r'success');
  static const unknownDevice =
      WebAuthnAuthenticateStartRspAllOfStatusEnum._(r'unknownDevice');
  static const unconfirmedDevice =
      WebAuthnAuthenticateStartRspAllOfStatusEnum._(r'unconfirmedDevice');

  /// List of all possible values in this [enum][WebAuthnAuthenticateStartRspAllOfStatusEnum].
  static const values = <WebAuthnAuthenticateStartRspAllOfStatusEnum>[
    success,
    unknownDevice,
    unconfirmedDevice,
  ];

  static WebAuthnAuthenticateStartRspAllOfStatusEnum? fromJson(dynamic value) =>
      WebAuthnAuthenticateStartRspAllOfStatusEnumTypeTransformer()
          .decode(value);

  static List<WebAuthnAuthenticateStartRspAllOfStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnAuthenticateStartRspAllOfStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateStartRspAllOfStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnAuthenticateStartRspAllOfStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnAuthenticateStartRspAllOfStatusEnum].
class WebAuthnAuthenticateStartRspAllOfStatusEnumTypeTransformer {
  factory WebAuthnAuthenticateStartRspAllOfStatusEnumTypeTransformer() =>
      _instance ??=
          const WebAuthnAuthenticateStartRspAllOfStatusEnumTypeTransformer._();

  const WebAuthnAuthenticateStartRspAllOfStatusEnumTypeTransformer._();

  String encode(WebAuthnAuthenticateStartRspAllOfStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnAuthenticateStartRspAllOfStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnAuthenticateStartRspAllOfStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success':
          return WebAuthnAuthenticateStartRspAllOfStatusEnum.success;
        case r'unknownDevice':
          return WebAuthnAuthenticateStartRspAllOfStatusEnum.unknownDevice;
        case r'unconfirmedDevice':
          return WebAuthnAuthenticateStartRspAllOfStatusEnum.unconfirmedDevice;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnAuthenticateStartRspAllOfStatusEnumTypeTransformer] instance.
  static WebAuthnAuthenticateStartRspAllOfStatusEnumTypeTransformer? _instance;
}
