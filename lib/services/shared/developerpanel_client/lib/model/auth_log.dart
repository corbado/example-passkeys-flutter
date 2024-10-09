//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthLog {
  /// Returns a new [AuthLog] instance.
  AuthLog({
    required this.created,
    required this.eventType,
    required this.method,
    required this.status,
    required this.userID,
    required this.userName,
  });

  /// The date and time the log was created.
  String created;

  /// The type of event (e.g., login, logout).
  String eventType;

  /// The authentication method used (e.g., password, WebAuthn).
  String method;

  /// The status of the event (e.g., success, failure).
  String status;

  /// The ID of the user.
  String userID;

  /// The name of the user.
  String userName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthLog &&
          other.created == created &&
          other.eventType == eventType &&
          other.method == method &&
          other.status == status &&
          other.userID == userID &&
          other.userName == userName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (created.hashCode) +
      (eventType.hashCode) +
      (method.hashCode) +
      (status.hashCode) +
      (userID.hashCode) +
      (userName.hashCode);

  @override
  String toString() =>
      'AuthLog[created=$created, eventType=$eventType, method=$method, status=$status, userID=$userID, userName=$userName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'created'] = this.created;
    json[r'eventType'] = this.eventType;
    json[r'method'] = this.method;
    json[r'status'] = this.status;
    json[r'userID'] = this.userID;
    json[r'userName'] = this.userName;
    return json;
  }

  /// Returns a new [AuthLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AuthLog[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AuthLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthLog(
        created: mapValueOfType<String>(json, r'created')!,
        eventType: mapValueOfType<String>(json, r'eventType')!,
        method: mapValueOfType<String>(json, r'method')!,
        status: mapValueOfType<String>(json, r'status')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        userName: mapValueOfType<String>(json, r'userName')!,
      );
    }
    return null;
  }

  static List<AuthLog> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AuthLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthLog> mapFromJson(dynamic json) {
    final map = <String, AuthLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthLog-objects as value to a dart map
  static Map<String, List<AuthLog>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AuthLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthLog.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created',
    'eventType',
    'method',
    'status',
    'userID',
    'userName',
  };
}
