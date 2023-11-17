//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebAuthnRegisterStartReq {
  /// Returns a new [WebAuthnRegisterStartReq] instance.
  WebAuthnRegisterStartReq({
    required this.origin,
    required this.username,
    required this.clientInfo,
    this.userFullName,
    this.requestID,
    this.credentialStatus,
  });

  /// External application address including protocol and port when not 80 or 443
  String origin;

  String username;

  ClientInfo clientInfo;

  /// Optional user's full name to be used if the user wasn't found and needs to be created first
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userFullName;

  /// Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestID;

  /// Sets credential status into active and pending. Pending status dont allow a login until the credential gets confirmed by an api call.
  WebAuthnRegisterStartReqCredentialStatusEnum? credentialStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebAuthnRegisterStartReq &&
     other.origin == origin &&
     other.username == username &&
     other.clientInfo == clientInfo &&
     other.userFullName == userFullName &&
     other.requestID == requestID &&
     other.credentialStatus == credentialStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (origin.hashCode) +
    (username.hashCode) +
    (clientInfo.hashCode) +
    (userFullName == null ? 0 : userFullName!.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (credentialStatus == null ? 0 : credentialStatus!.hashCode);

  @override
  String toString() => 'WebAuthnRegisterStartReq[origin=$origin, username=$username, clientInfo=$clientInfo, userFullName=$userFullName, requestID=$requestID, credentialStatus=$credentialStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'origin'] = this.origin;
      json[r'username'] = this.username;
      json[r'clientInfo'] = this.clientInfo;
    if (this.userFullName != null) {
      json[r'userFullName'] = this.userFullName;
    } else {
      json[r'userFullName'] = null;
    }
    if (this.requestID != null) {
      json[r'requestID'] = this.requestID;
    } else {
      json[r'requestID'] = null;
    }
    if (this.credentialStatus != null) {
      json[r'credentialStatus'] = this.credentialStatus;
    } else {
      json[r'credentialStatus'] = null;
    }
    return json;
  }

  /// Returns a new [WebAuthnRegisterStartReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebAuthnRegisterStartReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebAuthnRegisterStartReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebAuthnRegisterStartReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebAuthnRegisterStartReq(
        origin: mapValueOfType<String>(json, r'origin')!,
        username: mapValueOfType<String>(json, r'username')!,
        clientInfo: ClientInfo.fromJson(json[r'clientInfo'])!,
        userFullName: mapValueOfType<String>(json, r'userFullName'),
        requestID: mapValueOfType<String>(json, r'requestID'),
        credentialStatus: WebAuthnRegisterStartReqCredentialStatusEnum.fromJson(json[r'credentialStatus']),
      );
    }
    return null;
  }

  static List<WebAuthnRegisterStartReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnRegisterStartReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterStartReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebAuthnRegisterStartReq> mapFromJson(dynamic json) {
    final map = <String, WebAuthnRegisterStartReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebAuthnRegisterStartReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebAuthnRegisterStartReq-objects as value to a dart map
  static Map<String, List<WebAuthnRegisterStartReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebAuthnRegisterStartReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebAuthnRegisterStartReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'origin',
    'username',
    'clientInfo',
  };
}

/// Sets credential status into active and pending. Pending status dont allow a login until the credential gets confirmed by an api call.
class WebAuthnRegisterStartReqCredentialStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WebAuthnRegisterStartReqCredentialStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = WebAuthnRegisterStartReqCredentialStatusEnum._(r'active');
  static const pending = WebAuthnRegisterStartReqCredentialStatusEnum._(r'pending');

  /// List of all possible values in this [enum][WebAuthnRegisterStartReqCredentialStatusEnum].
  static const values = <WebAuthnRegisterStartReqCredentialStatusEnum>[
    active,
    pending,
  ];

  static WebAuthnRegisterStartReqCredentialStatusEnum? fromJson(dynamic value) => WebAuthnRegisterStartReqCredentialStatusEnumTypeTransformer().decode(value);

  static List<WebAuthnRegisterStartReqCredentialStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebAuthnRegisterStartReqCredentialStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebAuthnRegisterStartReqCredentialStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WebAuthnRegisterStartReqCredentialStatusEnum] to String,
/// and [decode] dynamic data back to [WebAuthnRegisterStartReqCredentialStatusEnum].
class WebAuthnRegisterStartReqCredentialStatusEnumTypeTransformer {
  factory WebAuthnRegisterStartReqCredentialStatusEnumTypeTransformer() => _instance ??= const WebAuthnRegisterStartReqCredentialStatusEnumTypeTransformer._();

  const WebAuthnRegisterStartReqCredentialStatusEnumTypeTransformer._();

  String encode(WebAuthnRegisterStartReqCredentialStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WebAuthnRegisterStartReqCredentialStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WebAuthnRegisterStartReqCredentialStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return WebAuthnRegisterStartReqCredentialStatusEnum.active;
        case r'pending': return WebAuthnRegisterStartReqCredentialStatusEnum.pending;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WebAuthnRegisterStartReqCredentialStatusEnumTypeTransformer] instance.
  static WebAuthnRegisterStartReqCredentialStatusEnumTypeTransformer? _instance;
}


