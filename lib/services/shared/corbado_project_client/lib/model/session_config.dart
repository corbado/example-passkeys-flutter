//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionConfig {
  /// Returns a new [SessionConfig] instance.
  SessionConfig({
    required this.projectID,
    required this.shortLifetimeMinutes,
    required this.shortCookieDomain,
    required this.shortCookieSecure,
    required this.shortCookieSameSite,
    required this.longLifetimeValue,
    required this.longLifetimeUnit,
    required this.longInactivityValue,
    required this.longInactivityUnit,
    required this.jwtAudience,
    required this.created,
    required this.updated,
    this.active,
  });

  /// ID of project
  String projectID;

  int shortLifetimeMinutes;

  String shortCookieDomain;

  bool shortCookieSecure;

  SessionConfigShortCookieSameSiteEnum shortCookieSameSite;

  int longLifetimeValue;

  SessionConfigLongLifetimeUnitEnum longLifetimeUnit;

  int longInactivityValue;

  SessionConfigLongInactivityUnitEnum longInactivityUnit;

  String jwtAudience;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionConfig &&
     other.projectID == projectID &&
     other.shortLifetimeMinutes == shortLifetimeMinutes &&
     other.shortCookieDomain == shortCookieDomain &&
     other.shortCookieSecure == shortCookieSecure &&
     other.shortCookieSameSite == shortCookieSameSite &&
     other.longLifetimeValue == longLifetimeValue &&
     other.longLifetimeUnit == longLifetimeUnit &&
     other.longInactivityValue == longInactivityValue &&
     other.longInactivityUnit == longInactivityUnit &&
     other.jwtAudience == jwtAudience &&
     other.created == created &&
     other.updated == updated &&
     other.active == active;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectID.hashCode) +
    (shortLifetimeMinutes.hashCode) +
    (shortCookieDomain.hashCode) +
    (shortCookieSecure.hashCode) +
    (shortCookieSameSite.hashCode) +
    (longLifetimeValue.hashCode) +
    (longLifetimeUnit.hashCode) +
    (longInactivityValue.hashCode) +
    (longInactivityUnit.hashCode) +
    (jwtAudience.hashCode) +
    (created.hashCode) +
    (updated.hashCode) +
    (active == null ? 0 : active!.hashCode);

  @override
  String toString() => 'SessionConfig[projectID=$projectID, shortLifetimeMinutes=$shortLifetimeMinutes, shortCookieDomain=$shortCookieDomain, shortCookieSecure=$shortCookieSecure, shortCookieSameSite=$shortCookieSameSite, longLifetimeValue=$longLifetimeValue, longLifetimeUnit=$longLifetimeUnit, longInactivityValue=$longInactivityValue, longInactivityUnit=$longInactivityUnit, jwtAudience=$jwtAudience, created=$created, updated=$updated, active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'projectID'] = this.projectID;
      json[r'shortLifetimeMinutes'] = this.shortLifetimeMinutes;
      json[r'shortCookieDomain'] = this.shortCookieDomain;
      json[r'shortCookieSecure'] = this.shortCookieSecure;
      json[r'shortCookieSameSite'] = this.shortCookieSameSite;
      json[r'longLifetimeValue'] = this.longLifetimeValue;
      json[r'longLifetimeUnit'] = this.longLifetimeUnit;
      json[r'longInactivityValue'] = this.longInactivityValue;
      json[r'longInactivityUnit'] = this.longInactivityUnit;
      json[r'jwtAudience'] = this.jwtAudience;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    return json;
  }

  /// Returns a new [SessionConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionConfig(
        projectID: mapValueOfType<String>(json, r'projectID')!,
        shortLifetimeMinutes: mapValueOfType<int>(json, r'shortLifetimeMinutes')!,
        shortCookieDomain: mapValueOfType<String>(json, r'shortCookieDomain')!,
        shortCookieSecure: mapValueOfType<bool>(json, r'shortCookieSecure')!,
        shortCookieSameSite: SessionConfigShortCookieSameSiteEnum.fromJson(json[r'shortCookieSameSite'])!,
        longLifetimeValue: mapValueOfType<int>(json, r'longLifetimeValue')!,
        longLifetimeUnit: SessionConfigLongLifetimeUnitEnum.fromJson(json[r'longLifetimeUnit'])!,
        longInactivityValue: mapValueOfType<int>(json, r'longInactivityValue')!,
        longInactivityUnit: SessionConfigLongInactivityUnitEnum.fromJson(json[r'longInactivityUnit'])!,
        jwtAudience: mapValueOfType<String>(json, r'jwtAudience')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        active: mapValueOfType<bool>(json, r'active'),
      );
    }
    return null;
  }

  static List<SessionConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionConfig> mapFromJson(dynamic json) {
    final map = <String, SessionConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionConfig-objects as value to a dart map
  static Map<String, List<SessionConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projectID',
    'shortLifetimeMinutes',
    'shortCookieDomain',
    'shortCookieSecure',
    'shortCookieSameSite',
    'longLifetimeValue',
    'longLifetimeUnit',
    'longInactivityValue',
    'longInactivityUnit',
    'jwtAudience',
    'created',
    'updated',
  };
}


class SessionConfigShortCookieSameSiteEnum {
  /// Instantiate a new enum with the provided [value].
  const SessionConfigShortCookieSameSiteEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const lax = SessionConfigShortCookieSameSiteEnum._(r'lax');
  static const strict = SessionConfigShortCookieSameSiteEnum._(r'strict');
  static const none = SessionConfigShortCookieSameSiteEnum._(r'none');

  /// List of all possible values in this [enum][SessionConfigShortCookieSameSiteEnum].
  static const values = <SessionConfigShortCookieSameSiteEnum>[
    lax,
    strict,
    none,
  ];

  static SessionConfigShortCookieSameSiteEnum? fromJson(dynamic value) => SessionConfigShortCookieSameSiteEnumTypeTransformer().decode(value);

  static List<SessionConfigShortCookieSameSiteEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfigShortCookieSameSiteEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfigShortCookieSameSiteEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionConfigShortCookieSameSiteEnum] to String,
/// and [decode] dynamic data back to [SessionConfigShortCookieSameSiteEnum].
class SessionConfigShortCookieSameSiteEnumTypeTransformer {
  factory SessionConfigShortCookieSameSiteEnumTypeTransformer() => _instance ??= const SessionConfigShortCookieSameSiteEnumTypeTransformer._();

  const SessionConfigShortCookieSameSiteEnumTypeTransformer._();

  String encode(SessionConfigShortCookieSameSiteEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionConfigShortCookieSameSiteEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionConfigShortCookieSameSiteEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'lax': return SessionConfigShortCookieSameSiteEnum.lax;
        case r'strict': return SessionConfigShortCookieSameSiteEnum.strict;
        case r'none': return SessionConfigShortCookieSameSiteEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionConfigShortCookieSameSiteEnumTypeTransformer] instance.
  static SessionConfigShortCookieSameSiteEnumTypeTransformer? _instance;
}



class SessionConfigLongLifetimeUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const SessionConfigLongLifetimeUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const min = SessionConfigLongLifetimeUnitEnum._(r'min');
  static const hour = SessionConfigLongLifetimeUnitEnum._(r'hour');
  static const day = SessionConfigLongLifetimeUnitEnum._(r'day');

  /// List of all possible values in this [enum][SessionConfigLongLifetimeUnitEnum].
  static const values = <SessionConfigLongLifetimeUnitEnum>[
    min,
    hour,
    day,
  ];

  static SessionConfigLongLifetimeUnitEnum? fromJson(dynamic value) => SessionConfigLongLifetimeUnitEnumTypeTransformer().decode(value);

  static List<SessionConfigLongLifetimeUnitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfigLongLifetimeUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfigLongLifetimeUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionConfigLongLifetimeUnitEnum] to String,
/// and [decode] dynamic data back to [SessionConfigLongLifetimeUnitEnum].
class SessionConfigLongLifetimeUnitEnumTypeTransformer {
  factory SessionConfigLongLifetimeUnitEnumTypeTransformer() => _instance ??= const SessionConfigLongLifetimeUnitEnumTypeTransformer._();

  const SessionConfigLongLifetimeUnitEnumTypeTransformer._();

  String encode(SessionConfigLongLifetimeUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionConfigLongLifetimeUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionConfigLongLifetimeUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'min': return SessionConfigLongLifetimeUnitEnum.min;
        case r'hour': return SessionConfigLongLifetimeUnitEnum.hour;
        case r'day': return SessionConfigLongLifetimeUnitEnum.day;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionConfigLongLifetimeUnitEnumTypeTransformer] instance.
  static SessionConfigLongLifetimeUnitEnumTypeTransformer? _instance;
}



class SessionConfigLongInactivityUnitEnum {
  /// Instantiate a new enum with the provided [value].
  const SessionConfigLongInactivityUnitEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const min = SessionConfigLongInactivityUnitEnum._(r'min');
  static const hour = SessionConfigLongInactivityUnitEnum._(r'hour');
  static const day = SessionConfigLongInactivityUnitEnum._(r'day');

  /// List of all possible values in this [enum][SessionConfigLongInactivityUnitEnum].
  static const values = <SessionConfigLongInactivityUnitEnum>[
    min,
    hour,
    day,
  ];

  static SessionConfigLongInactivityUnitEnum? fromJson(dynamic value) => SessionConfigLongInactivityUnitEnumTypeTransformer().decode(value);

  static List<SessionConfigLongInactivityUnitEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionConfigLongInactivityUnitEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionConfigLongInactivityUnitEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SessionConfigLongInactivityUnitEnum] to String,
/// and [decode] dynamic data back to [SessionConfigLongInactivityUnitEnum].
class SessionConfigLongInactivityUnitEnumTypeTransformer {
  factory SessionConfigLongInactivityUnitEnumTypeTransformer() => _instance ??= const SessionConfigLongInactivityUnitEnumTypeTransformer._();

  const SessionConfigLongInactivityUnitEnumTypeTransformer._();

  String encode(SessionConfigLongInactivityUnitEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SessionConfigLongInactivityUnitEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SessionConfigLongInactivityUnitEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'min': return SessionConfigLongInactivityUnitEnum.min;
        case r'hour': return SessionConfigLongInactivityUnitEnum.hour;
        case r'day': return SessionConfigLongInactivityUnitEnum.day;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SessionConfigLongInactivityUnitEnumTypeTransformer] instance.
  static SessionConfigLongInactivityUnitEnumTypeTransformer? _instance;
}


