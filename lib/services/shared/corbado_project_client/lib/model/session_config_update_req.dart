//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionConfigUpdateReq {
  /// Returns a new [SessionConfigUpdateReq] instance.
  SessionConfigUpdateReq({
    this.active,
    this.shortLifetimeMinutes,
    this.shortCookieDomain,
    this.shortCookieSecure,
    this.shortCookieSameSite,
    this.longLifetimeValue,
    this.longLifetimeUnit,
    this.longInactivityValue,
    this.longInactivityUnit,
    this.requestID,
    this.clientInfo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shortLifetimeMinutes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortCookieDomain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? shortCookieSecure;

  SessionConfigUpdateReqShortCookieSameSiteEnum? shortCookieSameSite;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? longLifetimeValue;

  SessionConfigUpdateReqLongLifetimeUnitEnum? longLifetimeUnit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? longInactivityValue;

  SessionConfigUpdateReqLongInactivityUnitEnum? longInactivityUnit;

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
  bool operator ==(Object other) => identical(this, other) || other is SessionConfigUpdateReq &&
     other.active == active &&
     other.shortLifetimeMinutes == shortLifetimeMinutes &&
     other.shortCookieDomain == shortCookieDomain &&
     other.shortCookieSecure == shortCookieSecure &&
     other.shortCookieSameSite == shortCookieSameSite &&
     other.longLifetimeValue == longLifetimeValue &&
     other.longLifetimeUnit == longLifetimeUnit &&
     other.longInactivityValue == longInactivityValue &&
     other.longInactivityUnit == longInactivityUnit &&
     other.requestID == requestID &&
     other.clientInfo == clientInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (shortLifetimeMinutes == null ? 0 : shortLifetimeMinutes!.hashCode) +
    (shortCookieDomain == null ? 0 : shortCookieDomain!.hashCode) +
    (shortCookieSecure == null ? 0 : shortCookieSecure!.hashCode) +
    (shortCookieSameSite == null ? 0 : shortCookieSameSite!.hashCode) +
    (longLifetimeValue == null ? 0 : longLifetimeValue!.hashCode) +
    (longLifetimeUnit == null ? 0 : longLifetimeUnit!.hashCode) +
    (longInactivityValue == null ? 0 : longInactivityValue!.hashCode) +
    (longInactivityUnit == null ? 0 : longInactivityUnit!.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() => 'SessionConfigUpdateReq[active=$active, shortLifetimeMinutes=$shortLifetimeMinutes, shortCookieDomain=$shortCookieDomain, shortCookieSecure=$shortCookieSecure, shortCookieSameSite=$shortCookieSameSite, longLifetimeValue=$longLifetimeValue, longLifetimeUnit=$longLifetimeUnit, longInactivityValue=$longInactivityValue, longInactivityUnit=$longInactivityUnit, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.shortLifetimeMinutes != null) {
      json[r'shortLifetimeMinutes'] = this.shortLifetimeMinutes;
    } else {
      json[r'shortLifetimeMinutes'] = null;
    }
    if (this.shortCookieDomain != null) {
      json[r'shortCookieDomain'] = this.shortCookieDomain;
    } else {
      json[r'shortCookieDomain'] = null;
    }
    if (this.shortCookieSecure != null) {
      json[r'shortCookieSecure'] = this.shortCookieSecure;
    } else {
      json[r'shortCookieSecure'] = null;
    }
    if (this.shortCookieSameSite != null) {
      json[r'shortCookieSameSite'] = this.shortCookieSameSite;
    } else {
      json[r'shortCookieSameSite'] = null;
    }
    if (this.longLifetimeValue != null) {
      json[r'longLifetimeValue'] = this.longLifetimeValue;
    } else {
      json[r'longLifetimeValue'] = null;
    }
    if (this.longLifetimeUnit != null) {
      json[r'longLifetimeUnit'] = this.longLifetimeUnit;
    } else {
      json[r'longLifetimeUnit'] = null;
    }
    if (this.longInactivityValue != null) {
      json[r'longInactivityValue'] = this.longInactivityValue;
    } else {
      json[r'longInactivityValue'] = null;
    }
    if (this.longInactivityUnit != null) {
      json[r'longInactivityUnit'] = this.longInactivityUnit;
    } else {
      json[r'longInactivityUnit'] = null;
    }
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

  /// Returns a new [SessionConfigUpdateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionConfigUpdateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionConfigUpdateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionConfigUpdateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionConfigUpdateReq(
        active: mapValueOfType<bool>(json, r'active'),
        shortLifetimeMinutes: mapValueOfType<int>(json, r'shortLifetimeMinutes'),
        shortCookieDomain: mapValueOfType<String>(json, r'shortCookieDomain'),
        shortCookieSecure: mapValueOfType<bool>(json, r'shortCookieSecure'),
        shortCookieSameSite: SessionConfigUpdateReqShortCookieSameSiteEnum.fromJson(json[r'shortCookieSameSite']),
        longLifetimeValue: mapValueOfType<int>(json, r'longLifetimeValue'),
        longLifetimeUnit: SessionConfigUpdateReqLongLifetimeUnitEnum.fromJson(json[r'longLifetimeUnit']),
        longInactivityValue: mapValueOfType<int>(json, r'longInactivityValue'),
        longInactivityUnit: SessionConfigUpdateReqLongInactivityUnitEnum.fromJson(json[r'longInactivityUnit']),
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<SessionConfigUpdateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfigUpdateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfigUpdateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionConfigUpdateReq> mapFromJson(dynamic json) {
    final map = <String, SessionConfigUpdateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionConfigUpdateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionConfigUpdateReq-objects as value to a dart map
  static Map<String, List<SessionConfigUpdateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionConfigUpdateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionConfigUpdateReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class SessionConfigUpdateReqShortCookieSameSiteEnum {
  /// Instantiate a new enum with the provided [value].
  const SessionConfigUpdateReqShortCookieSameSiteEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const lax = SessionConfigUpdateReqShortCookieSameSiteEnum._(r'lax');
  static const strict = SessionConfigUpdateReqShortCookieSameSiteEnum._(r'strict');
  static const none = SessionConfigUpdateReqShortCookieSameSiteEnum._(r'none');

  /// List of all possible values in this [enum][SessionConfigUpdateReqShortCookieSameSiteEnum].
  static const values = <SessionConfigUpdateReqShortCookieSameSiteEnum>[
    lax,
    strict,
    none,
  ];

  static SessionConfigUpdateReqShortCookieSameSiteEnum? fromJson(dynamic value) => SessionConfigUpdateReqShortCookieSameSiteEnumTypeTransformer().decode(value);

  static List<SessionConfigUpdateReqShortCookieSameSiteEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfigUpdateReqShortCookieSameSiteEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfigUpdateReqShortCookieSameSiteEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionConfigUpdateReqShortCookieSameSiteEnum] to String,
/// and [decode] dynamic data back to [SessionConfigUpdateReqShortCookieSameSiteEnum].
class SessionConfigUpdateReqShortCookieSameSiteEnumTypeTransformer {
  factory SessionConfigUpdateReqShortCookieSameSiteEnumTypeTransformer() => _instance ??= const SessionConfigUpdateReqShortCookieSameSiteEnumTypeTransformer._();

  const SessionConfigUpdateReqShortCookieSameSiteEnumTypeTransformer._();

  String encode(SessionConfigUpdateReqShortCookieSameSiteEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionConfigUpdateReqShortCookieSameSiteEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionConfigUpdateReqShortCookieSameSiteEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'lax': return SessionConfigUpdateReqShortCookieSameSiteEnum.lax;
        case r'strict': return SessionConfigUpdateReqShortCookieSameSiteEnum.strict;
        case r'none': return SessionConfigUpdateReqShortCookieSameSiteEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionConfigUpdateReqShortCookieSameSiteEnumTypeTransformer] instance.
  static SessionConfigUpdateReqShortCookieSameSiteEnumTypeTransformer? _instance;
}



class SessionConfigUpdateReqLongLifetimeUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const SessionConfigUpdateReqLongLifetimeUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const min = SessionConfigUpdateReqLongLifetimeUnitEnum._(r'min');
  static const hour = SessionConfigUpdateReqLongLifetimeUnitEnum._(r'hour');

  /// List of all possible values in this [enum][SessionConfigUpdateReqLongLifetimeUnitEnum].
  static const values = <SessionConfigUpdateReqLongLifetimeUnitEnum>[
    min,
    hour,
  ];

  static SessionConfigUpdateReqLongLifetimeUnitEnum? fromJson(dynamic value) => SessionConfigUpdateReqLongLifetimeUnitEnumTypeTransformer().decode(value);

  static List<SessionConfigUpdateReqLongLifetimeUnitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfigUpdateReqLongLifetimeUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfigUpdateReqLongLifetimeUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionConfigUpdateReqLongLifetimeUnitEnum] to String,
/// and [decode] dynamic data back to [SessionConfigUpdateReqLongLifetimeUnitEnum].
class SessionConfigUpdateReqLongLifetimeUnitEnumTypeTransformer {
  factory SessionConfigUpdateReqLongLifetimeUnitEnumTypeTransformer() => _instance ??= const SessionConfigUpdateReqLongLifetimeUnitEnumTypeTransformer._();

  const SessionConfigUpdateReqLongLifetimeUnitEnumTypeTransformer._();

  String encode(SessionConfigUpdateReqLongLifetimeUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionConfigUpdateReqLongLifetimeUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionConfigUpdateReqLongLifetimeUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'min': return SessionConfigUpdateReqLongLifetimeUnitEnum.min;
        case r'hour': return SessionConfigUpdateReqLongLifetimeUnitEnum.hour;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionConfigUpdateReqLongLifetimeUnitEnumTypeTransformer] instance.
  static SessionConfigUpdateReqLongLifetimeUnitEnumTypeTransformer? _instance;
}



class SessionConfigUpdateReqLongInactivityUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const SessionConfigUpdateReqLongInactivityUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const min = SessionConfigUpdateReqLongInactivityUnitEnum._(r'min');
  static const hour = SessionConfigUpdateReqLongInactivityUnitEnum._(r'hour');

  /// List of all possible values in this [enum][SessionConfigUpdateReqLongInactivityUnitEnum].
  static const values = <SessionConfigUpdateReqLongInactivityUnitEnum>[
    min,
    hour,
  ];

  static SessionConfigUpdateReqLongInactivityUnitEnum? fromJson(dynamic value) => SessionConfigUpdateReqLongInactivityUnitEnumTypeTransformer().decode(value);

  static List<SessionConfigUpdateReqLongInactivityUnitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfigUpdateReqLongInactivityUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfigUpdateReqLongInactivityUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionConfigUpdateReqLongInactivityUnitEnum] to String,
/// and [decode] dynamic data back to [SessionConfigUpdateReqLongInactivityUnitEnum].
class SessionConfigUpdateReqLongInactivityUnitEnumTypeTransformer {
  factory SessionConfigUpdateReqLongInactivityUnitEnumTypeTransformer() => _instance ??= const SessionConfigUpdateReqLongInactivityUnitEnumTypeTransformer._();

  const SessionConfigUpdateReqLongInactivityUnitEnumTypeTransformer._();

  String encode(SessionConfigUpdateReqLongInactivityUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionConfigUpdateReqLongInactivityUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionConfigUpdateReqLongInactivityUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'min': return SessionConfigUpdateReqLongInactivityUnitEnum.min;
        case r'hour': return SessionConfigUpdateReqLongInactivityUnitEnum.hour;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionConfigUpdateReqLongInactivityUnitEnumTypeTransformer] instance.
  static SessionConfigUpdateReqLongInactivityUnitEnumTypeTransformer? _instance;
}


