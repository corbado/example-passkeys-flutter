//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnRegisterFinishRspAllOf {
  /// Returns a new [WebAuthnRegisterFinishRspAllOf] instance.
  WebAuthnRegisterFinishRspAllOf({
    required this.status,
  });

  /// Status represents information if user sign up was successful or if the user with provided credentials already exists
  WebAuthnRegisterFinishRspAllOfStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnRegisterFinishRspAllOf && other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status.hashCode);

  @override
  String toString() => 'WebAuthnRegisterFinishRspAllOf[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [WebAuthnRegisterFinishRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnRegisterFinishRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnRegisterFinishRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnRegisterFinishRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnRegisterFinishRspAllOf(
        status:
            WebAuthnRegisterFinishRspAllOfStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<WebAuthnRegisterFinishRspAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnRegisterFinishRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterFinishRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnRegisterFinishRspAllOf> mapFromJson(dynamic json) {
    final map = <String, WebAuthnRegisterFinishRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnRegisterFinishRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnRegisterFinishRspAllOf-objects as value to a dart map
  static Map<String, List<WebAuthnRegisterFinishRspAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnRegisterFinishRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnRegisterFinishRspAllOf.listFromJson(
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

/// Status represents information if user sign up was successful or if the user with provided credentials already exists
class WebAuthnRegisterFinishRspAllOfStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnRegisterFinishRspAllOfStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnRegisterFinishRspAllOfStatusEnum._(r'success');
  static const duplicate =
      WebAuthnRegisterFinishRspAllOfStatusEnum._(r'duplicate');

  /// List of all possible values in this [enum][WebAuthnRegisterFinishRspAllOfStatusEnum].
  static const values = <WebAuthnRegisterFinishRspAllOfStatusEnum>[
    success,
    duplicate,
  ];

  static WebAuthnRegisterFinishRspAllOfStatusEnum? fromJson(dynamic value) =>
      WebAuthnRegisterFinishRspAllOfStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnRegisterFinishRspAllOfStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnRegisterFinishRspAllOfStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterFinishRspAllOfStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnRegisterFinishRspAllOfStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnRegisterFinishRspAllOfStatusEnum].
class WebAuthnRegisterFinishRspAllOfStatusEnumTypeTransformer {
  factory WebAuthnRegisterFinishRspAllOfStatusEnumTypeTransformer() =>
      _instance ??=
          const WebAuthnRegisterFinishRspAllOfStatusEnumTypeTransformer._();

  const WebAuthnRegisterFinishRspAllOfStatusEnumTypeTransformer._();

  String encode(WebAuthnRegisterFinishRspAllOfStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnRegisterFinishRspAllOfStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnRegisterFinishRspAllOfStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success':
          return WebAuthnRegisterFinishRspAllOfStatusEnum.success;
        case r'duplicate':
          return WebAuthnRegisterFinishRspAllOfStatusEnum.duplicate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnRegisterFinishRspAllOfStatusEnumTypeTransformer] instance.
  static WebAuthnRegisterFinishRspAllOfStatusEnumTypeTransformer? _instance;
}
