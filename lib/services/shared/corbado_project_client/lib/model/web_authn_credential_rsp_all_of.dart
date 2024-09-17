//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnCredentialRspAllOf {
  /// Returns a new [WebAuthnCredentialRspAllOf] instance.
  WebAuthnCredentialRspAllOf({
    required this.status,
  });

  /// Status
  WebAuthnCredentialRspAllOfStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnCredentialRspAllOf && other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status.hashCode);

  @override
  String toString() => 'WebAuthnCredentialRspAllOf[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [WebAuthnCredentialRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnCredentialRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnCredentialRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnCredentialRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnCredentialRspAllOf(
        status: WebAuthnCredentialRspAllOfStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<WebAuthnCredentialRspAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnCredentialRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnCredentialRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnCredentialRspAllOf> mapFromJson(dynamic json) {
    final map = <String, WebAuthnCredentialRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnCredentialRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnCredentialRspAllOf-objects as value to a dart map
  static Map<String, List<WebAuthnCredentialRspAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnCredentialRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnCredentialRspAllOf.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}

/// Status
class WebAuthnCredentialRspAllOfStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnCredentialRspAllOfStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = WebAuthnCredentialRspAllOfStatusEnum._(r'pending');
  static const active = WebAuthnCredentialRspAllOfStatusEnum._(r'active');
  static const deleted = WebAuthnCredentialRspAllOfStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][WebAuthnCredentialRspAllOfStatusEnum].
  static const values = <WebAuthnCredentialRspAllOfStatusEnum>[
    pending,
    active,
    deleted,
  ];

  static WebAuthnCredentialRspAllOfStatusEnum? fromJson(dynamic value) =>
      WebAuthnCredentialRspAllOfStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnCredentialRspAllOfStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnCredentialRspAllOfStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnCredentialRspAllOfStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnCredentialRspAllOfStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnCredentialRspAllOfStatusEnum].
class WebAuthnCredentialRspAllOfStatusEnumTypeTransformer {
  factory WebAuthnCredentialRspAllOfStatusEnumTypeTransformer() => _instance ??=
      const WebAuthnCredentialRspAllOfStatusEnumTypeTransformer._();

  const WebAuthnCredentialRspAllOfStatusEnumTypeTransformer._();

  String encode(WebAuthnCredentialRspAllOfStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnCredentialRspAllOfStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnCredentialRspAllOfStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending':
          return WebAuthnCredentialRspAllOfStatusEnum.pending;
        case r'active':
          return WebAuthnCredentialRspAllOfStatusEnum.active;
        case r'deleted':
          return WebAuthnCredentialRspAllOfStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnCredentialRspAllOfStatusEnumTypeTransformer] instance.
  static WebAuthnCredentialRspAllOfStatusEnumTypeTransformer? _instance;
}
