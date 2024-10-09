//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthStat {
  /// Returns a new [AuthStat] instance.
  AuthStat({
    required this.timePoint,
    required this.totalUsers,
    required this.signUps,
    required this.activeUsers,
    required this.countPasskeyLogin,
    required this.countEmailLogin,
    required this.countPasswordLogin,
    required this.successfulLogins,
    required this.failedLogins,
  });

  String timePoint;

  int totalUsers;

  int signUps;

  int activeUsers;

  int countPasskeyLogin;

  int countEmailLogin;

  int countPasswordLogin;

  int successfulLogins;

  int failedLogins;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthStat &&
          other.timePoint == timePoint &&
          other.totalUsers == totalUsers &&
          other.signUps == signUps &&
          other.activeUsers == activeUsers &&
          other.countPasskeyLogin == countPasskeyLogin &&
          other.countEmailLogin == countEmailLogin &&
          other.countPasswordLogin == countPasswordLogin &&
          other.successfulLogins == successfulLogins &&
          other.failedLogins == failedLogins;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (timePoint.hashCode) +
      (totalUsers.hashCode) +
      (signUps.hashCode) +
      (activeUsers.hashCode) +
      (countPasskeyLogin.hashCode) +
      (countEmailLogin.hashCode) +
      (countPasswordLogin.hashCode) +
      (successfulLogins.hashCode) +
      (failedLogins.hashCode);

  @override
  String toString() =>
      'AuthStat[timePoint=$timePoint, totalUsers=$totalUsers, signUps=$signUps, activeUsers=$activeUsers, countPasskeyLogin=$countPasskeyLogin, countEmailLogin=$countEmailLogin, countPasswordLogin=$countPasswordLogin, successfulLogins=$successfulLogins, failedLogins=$failedLogins]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'timePoint'] = this.timePoint;
    json[r'totalUsers'] = this.totalUsers;
    json[r'signUps'] = this.signUps;
    json[r'activeUsers'] = this.activeUsers;
    json[r'countPasskeyLogin'] = this.countPasskeyLogin;
    json[r'countEmailLogin'] = this.countEmailLogin;
    json[r'countPasswordLogin'] = this.countPasswordLogin;
    json[r'successfulLogins'] = this.successfulLogins;
    json[r'failedLogins'] = this.failedLogins;
    return json;
  }

  /// Returns a new [AuthStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AuthStat[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AuthStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthStat(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        totalUsers: mapValueOfType<int>(json, r'totalUsers')!,
        signUps: mapValueOfType<int>(json, r'signUps')!,
        activeUsers: mapValueOfType<int>(json, r'activeUsers')!,
        countPasskeyLogin: mapValueOfType<int>(json, r'countPasskeyLogin')!,
        countEmailLogin: mapValueOfType<int>(json, r'countEmailLogin')!,
        countPasswordLogin: mapValueOfType<int>(json, r'countPasswordLogin')!,
        successfulLogins: mapValueOfType<int>(json, r'successfulLogins')!,
        failedLogins: mapValueOfType<int>(json, r'failedLogins')!,
      );
    }
    return null;
  }

  static List<AuthStat> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AuthStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthStat> mapFromJson(dynamic json) {
    final map = <String, AuthStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthStat-objects as value to a dart map
  static Map<String, List<AuthStat>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AuthStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthStat.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'totalUsers',
    'signUps',
    'activeUsers',
    'countPasskeyLogin',
    'countEmailLogin',
    'countPasswordLogin',
    'successfulLogins',
    'failedLogins',
  };
}
