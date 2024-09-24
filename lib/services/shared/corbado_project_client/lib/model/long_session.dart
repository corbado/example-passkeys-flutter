//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LongSession {
  /// Returns a new [LongSession] instance.
  LongSession({
    required this.ID,
    required this.userID,
    required this.userIdentifier,
    required this.userFullName,
    required this.deviceID,
    required this.browserName,
    required this.browserVersion,
    required this.osName,
    required this.osVersion,
    required this.expires,
    required this.lastAction,
    required this.created,
    required this.updated,
    required this.status,
  });

  String ID;

  /// ID of the user
  String userID;

  String userIdentifier;

  String userFullName;

  /// ID of the device
  String deviceID;

  String browserName;

  String browserVersion;

  String osName;

  String osVersion;

  /// Timestamp of when long session expires in yyyy-MM-dd'T'HH:mm:ss format
  String expires;

  /// Timestamp of when last action was done on long session in yyyy-MM-dd'T'HH:mm:ss format
  String lastAction;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  /// status values of a long session
  LongSessionStatusEnum status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LongSession &&
          other.ID == ID &&
          other.userID == userID &&
          other.userIdentifier == userIdentifier &&
          other.userFullName == userFullName &&
          other.deviceID == deviceID &&
          other.browserName == browserName &&
          other.browserVersion == browserVersion &&
          other.osName == osName &&
          other.osVersion == osVersion &&
          other.expires == expires &&
          other.lastAction == lastAction &&
          other.created == created &&
          other.updated == updated &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID.hashCode) +
      (userID.hashCode) +
      (userIdentifier.hashCode) +
      (userFullName.hashCode) +
      (deviceID.hashCode) +
      (browserName.hashCode) +
      (browserVersion.hashCode) +
      (osName.hashCode) +
      (osVersion.hashCode) +
      (expires.hashCode) +
      (lastAction.hashCode) +
      (created.hashCode) +
      (updated.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'LongSession[ID=$ID, userID=$userID, userIdentifier=$userIdentifier, userFullName=$userFullName, deviceID=$deviceID, browserName=$browserName, browserVersion=$browserVersion, osName=$osName, osVersion=$osVersion, expires=$expires, lastAction=$lastAction, created=$created, updated=$updated, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'ID'] = this.ID;
    json[r'userID'] = this.userID;
    json[r'userIdentifier'] = this.userIdentifier;
    json[r'userFullName'] = this.userFullName;
    json[r'deviceID'] = this.deviceID;
    json[r'browserName'] = this.browserName;
    json[r'browserVersion'] = this.browserVersion;
    json[r'osName'] = this.osName;
    json[r'osVersion'] = this.osVersion;
    json[r'expires'] = this.expires;
    json[r'lastAction'] = this.lastAction;
    json[r'created'] = this.created;
    json[r'updated'] = this.updated;
    json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [LongSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LongSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "LongSession[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "LongSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LongSession(
        ID: mapValueOfType<String>(json, r'ID')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        userIdentifier: mapValueOfType<String>(json, r'userIdentifier')!,
        userFullName: mapValueOfType<String>(json, r'userFullName')!,
        deviceID: mapValueOfType<String>(json, r'deviceID')!,
        browserName: mapValueOfType<String>(json, r'browserName')!,
        browserVersion: mapValueOfType<String>(json, r'browserVersion')!,
        osName: mapValueOfType<String>(json, r'osName')!,
        osVersion: mapValueOfType<String>(json, r'osVersion')!,
        expires: mapValueOfType<String>(json, r'expires')!,
        lastAction: mapValueOfType<String>(json, r'lastAction')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        status: LongSessionStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<LongSession> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LongSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LongSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LongSession> mapFromJson(dynamic json) {
    final map = <String, LongSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LongSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LongSession-objects as value to a dart map
  static Map<String, List<LongSession>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<LongSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LongSession.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ID',
    'userID',
    'userIdentifier',
    'userFullName',
    'deviceID',
    'browserName',
    'browserVersion',
    'osName',
    'osVersion',
    'expires',
    'lastAction',
    'created',
    'updated',
    'status',
  };
}

/// status values of a long session
class LongSessionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const LongSessionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = LongSessionStatusEnum._(r'active');
  static const loggedOut = LongSessionStatusEnum._(r'logged_out');
  static const expired = LongSessionStatusEnum._(r'expired');
  static const inactivityReached =
      LongSessionStatusEnum._(r'inactivity_reached');
  static const revoked = LongSessionStatusEnum._(r'revoked');

  /// List of all possible values in this [enum][LongSessionStatusEnum].
  static const values = <LongSessionStatusEnum>[
    active,
    loggedOut,
    expired,
    inactivityReached,
    revoked,
  ];

  static LongSessionStatusEnum? fromJson(dynamic value) =>
      LongSessionStatusEnumTypeTransformer().decode(value);

  static List<LongSessionStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LongSessionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LongSessionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LongSessionStatusEnum] to String,
/// and [decode] dynamic data back to [LongSessionStatusEnum].
class LongSessionStatusEnumTypeTransformer {
  factory LongSessionStatusEnumTypeTransformer() =>
      _instance ??= const LongSessionStatusEnumTypeTransformer._();

  const LongSessionStatusEnumTypeTransformer._();

  String encode(LongSessionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LongSessionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LongSessionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active':
          return LongSessionStatusEnum.active;
        case r'logged_out':
          return LongSessionStatusEnum.loggedOut;
        case r'expired':
          return LongSessionStatusEnum.expired;
        case r'inactivity_reached':
          return LongSessionStatusEnum.inactivityReached;
        case r'revoked':
          return LongSessionStatusEnum.revoked;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LongSessionStatusEnumTypeTransformer] instance.
  static LongSessionStatusEnumTypeTransformer? _instance;
}
