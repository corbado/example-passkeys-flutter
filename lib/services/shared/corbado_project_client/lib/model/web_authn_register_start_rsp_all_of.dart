//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnRegisterStartRspAllOf {
  /// Returns a new [WebAuthnRegisterStartRspAllOf] instance.
  WebAuthnRegisterStartRspAllOf({
    required this.status,
    required this.publicKeyCredentialCreationOptions,
  });

  /// Status represents information if user signup was successful or the user with its credentials already exists
  WebAuthnRegisterStartRspAllOfStatusEnum status;

  /// Contains JSON payload data to start Passkeys (Biometrics) sign up challenge
  String publicKeyCredentialCreationOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebAuthnRegisterStartRspAllOf &&
     other.status == status &&
     other.publicKeyCredentialCreationOptions == publicKeyCredentialCreationOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (publicKeyCredentialCreationOptions.hashCode);

  @override
  String toString() => 'WebAuthnRegisterStartRspAllOf[status=$status, publicKeyCredentialCreationOptions=$publicKeyCredentialCreationOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'publicKeyCredentialCreationOptions'] = this.publicKeyCredentialCreationOptions;
    return json;
  }

  /// Returns a new [WebAuthnRegisterStartRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnRegisterStartRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebAuthnRegisterStartRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebAuthnRegisterStartRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnRegisterStartRspAllOf(
        status: WebAuthnRegisterStartRspAllOfStatusEnum.fromJson(json[r'status'])!,
        publicKeyCredentialCreationOptions: mapValueOfType<String>(json, r'publicKeyCredentialCreationOptions')!,
      );
    }
    return null;
  }

  static List<WebAuthnRegisterStartRspAllOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnRegisterStartRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterStartRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnRegisterStartRspAllOf> mapFromJson(dynamic json) {
    final map = <String, WebAuthnRegisterStartRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnRegisterStartRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnRegisterStartRspAllOf-objects as value to a dart map
  static Map<String, List<WebAuthnRegisterStartRspAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebAuthnRegisterStartRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnRegisterStartRspAllOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'publicKeyCredentialCreationOptions',
  };
}

/// Status represents information if user signup was successful or the user with its credentials already exists
class WebAuthnRegisterStartRspAllOfStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnRegisterStartRspAllOfStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnRegisterStartRspAllOfStatusEnum._(r'success');
  static const duplicate = WebAuthnRegisterStartRspAllOfStatusEnum._(r'duplicate');

  /// List of all possible values in this [enum][WebAuthnRegisterStartRspAllOfStatusEnum].
  static const values = <WebAuthnRegisterStartRspAllOfStatusEnum>[
    success,
    duplicate,
  ];

  static WebAuthnRegisterStartRspAllOfStatusEnum? fromJson(dynamic value) => WebAuthnRegisterStartRspAllOfStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnRegisterStartRspAllOfStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnRegisterStartRspAllOfStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterStartRspAllOfStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnRegisterStartRspAllOfStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnRegisterStartRspAllOfStatusEnum].
class WebAuthnRegisterStartRspAllOfStatusEnumTypeTransformer {
  factory WebAuthnRegisterStartRspAllOfStatusEnumTypeTransformer() => _instance ??= const WebAuthnRegisterStartRspAllOfStatusEnumTypeTransformer._();

  const WebAuthnRegisterStartRspAllOfStatusEnumTypeTransformer._();

  String encode(WebAuthnRegisterStartRspAllOfStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnRegisterStartRspAllOfStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnRegisterStartRspAllOfStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success': return WebAuthnRegisterStartRspAllOfStatusEnum.success;
        case r'duplicate': return WebAuthnRegisterStartRspAllOfStatusEnum.duplicate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnRegisterStartRspAllOfStatusEnumTypeTransformer] instance.
  static WebAuthnRegisterStartRspAllOfStatusEnumTypeTransformer? _instance;
}


