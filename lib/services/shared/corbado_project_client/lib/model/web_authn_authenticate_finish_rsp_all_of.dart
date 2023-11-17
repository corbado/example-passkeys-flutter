//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnAuthenticateFinishRspAllOf {
  /// Returns a new [WebAuthnAuthenticateFinishRspAllOf] instance.
  WebAuthnAuthenticateFinishRspAllOf({
    required this.status,
  });

  /// Status represents information if user signup was successful or the user with its credentials already exists
  WebAuthnAuthenticateFinishRspAllOfStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebAuthnAuthenticateFinishRspAllOf &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'WebAuthnAuthenticateFinishRspAllOf[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [WebAuthnAuthenticateFinishRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnAuthenticateFinishRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebAuthnAuthenticateFinishRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebAuthnAuthenticateFinishRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnAuthenticateFinishRspAllOf(
        status: WebAuthnAuthenticateFinishRspAllOfStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<WebAuthnAuthenticateFinishRspAllOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnAuthenticateFinishRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateFinishRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnAuthenticateFinishRspAllOf> mapFromJson(dynamic json) {
    final map = <String, WebAuthnAuthenticateFinishRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnAuthenticateFinishRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnAuthenticateFinishRspAllOf-objects as value to a dart map
  static Map<String, List<WebAuthnAuthenticateFinishRspAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebAuthnAuthenticateFinishRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnAuthenticateFinishRspAllOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}

/// Status represents information if user signup was successful or the user with its credentials already exists
class WebAuthnAuthenticateFinishRspAllOfStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnAuthenticateFinishRspAllOfStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const success = WebAuthnAuthenticateFinishRspAllOfStatusEnum._(r'success');
  static const unconfirmedCredential = WebAuthnAuthenticateFinishRspAllOfStatusEnum._(r'unconfirmedCredential');

  /// List of all possible values in this [enum][WebAuthnAuthenticateFinishRspAllOfStatusEnum].
  static const values = <WebAuthnAuthenticateFinishRspAllOfStatusEnum>[
    success,
    unconfirmedCredential,
  ];

  static WebAuthnAuthenticateFinishRspAllOfStatusEnum? fromJson(dynamic value) => WebAuthnAuthenticateFinishRspAllOfStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnAuthenticateFinishRspAllOfStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnAuthenticateFinishRspAllOfStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnAuthenticateFinishRspAllOfStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnAuthenticateFinishRspAllOfStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnAuthenticateFinishRspAllOfStatusEnum].
class WebAuthnAuthenticateFinishRspAllOfStatusEnumTypeTransformer {
  factory WebAuthnAuthenticateFinishRspAllOfStatusEnumTypeTransformer() => _instance ??= const WebAuthnAuthenticateFinishRspAllOfStatusEnumTypeTransformer._();

  const WebAuthnAuthenticateFinishRspAllOfStatusEnumTypeTransformer._();

  String encode(WebAuthnAuthenticateFinishRspAllOfStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnAuthenticateFinishRspAllOfStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnAuthenticateFinishRspAllOfStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'success': return WebAuthnAuthenticateFinishRspAllOfStatusEnum.success;
        case r'unconfirmedCredential': return WebAuthnAuthenticateFinishRspAllOfStatusEnum.unconfirmedCredential;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnAuthenticateFinishRspAllOfStatusEnumTypeTransformer] instance.
  static WebAuthnAuthenticateFinishRspAllOfStatusEnumTypeTransformer? _instance;
}


