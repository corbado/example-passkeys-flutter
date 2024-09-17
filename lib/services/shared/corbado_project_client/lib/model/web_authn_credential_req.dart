//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnCredentialReq {
  /// Returns a new [WebAuthnCredentialReq] instance.
  WebAuthnCredentialReq({
    required this.status,
    this.requestID,
    this.clientInfo,
  });

  WebAuthnCredentialReqStatusEnum status;

  /// Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClientInfo? clientInfo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebAuthnCredentialReq &&
          other.status == status &&
          other.requestID == requestID &&
          other.clientInfo == clientInfo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status.hashCode) +
      (requestID == null ? 0 : requestID!.hashCode) +
      (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() =>
      'WebAuthnCredentialReq[status=$status, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'status'] = this.status;
    if (this.requestID != null) {
      json[r'requestID'] = this.requestID;
    } else {
      json[r'requestID'] = null;
    }
    if (this.clientInfo != null) {
      json[r'clientInfo'] = this.clientInfo;
    } else {
      json[r'clientInfo'] = null;
    }
    return json;
  }

  /// Returns a new [WebAuthnCredentialReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnCredentialReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "WebAuthnCredentialReq[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "WebAuthnCredentialReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnCredentialReq(
        status: WebAuthnCredentialReqStatusEnum.fromJson(json[r'status'])!,
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<WebAuthnCredentialReq> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnCredentialReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnCredentialReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnCredentialReq> mapFromJson(dynamic json) {
    final map = <String, WebAuthnCredentialReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnCredentialReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnCredentialReq-objects as value to a dart map
  static Map<String, List<WebAuthnCredentialReq>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<WebAuthnCredentialReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnCredentialReq.listFromJson(
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

class WebAuthnCredentialReqStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnCredentialReqStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = WebAuthnCredentialReqStatusEnum._(r'pending');
  static const active = WebAuthnCredentialReqStatusEnum._(r'active');
  static const deleted = WebAuthnCredentialReqStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][WebAuthnCredentialReqStatusEnum].
  static const values = <WebAuthnCredentialReqStatusEnum>[
    pending,
    active,
    deleted,
  ];

  static WebAuthnCredentialReqStatusEnum? fromJson(dynamic value) =>
      WebAuthnCredentialReqStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnCredentialReqStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <WebAuthnCredentialReqStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnCredentialReqStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnCredentialReqStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnCredentialReqStatusEnum].
class WebAuthnCredentialReqStatusEnumTypeTransformer {
  factory WebAuthnCredentialReqStatusEnumTypeTransformer() =>
      _instance ??= const WebAuthnCredentialReqStatusEnumTypeTransformer._();

  const WebAuthnCredentialReqStatusEnumTypeTransformer._();

  String encode(WebAuthnCredentialReqStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnCredentialReqStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnCredentialReqStatusEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending':
          return WebAuthnCredentialReqStatusEnum.pending;
        case r'active':
          return WebAuthnCredentialReqStatusEnum.active;
        case r'deleted':
          return WebAuthnCredentialReqStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnCredentialReqStatusEnumTypeTransformer] instance.
  static WebAuthnCredentialReqStatusEnumTypeTransformer? _instance;
}
