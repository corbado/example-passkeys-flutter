//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserAuthLog {
  /// Returns a new [UserAuthLog] instance.
  UserAuthLog({
    required this.userID,
    required this.userName,
    required this.method,
    required this.eventType,
    required this.status,
    required this.created,
  });

  /// ID of the user
  String userID;

  String userName;

  String method;

  String eventType;

  String status;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAuthLog &&
          other.userID == userID &&
          other.userName == userName &&
          other.method == method &&
          other.eventType == eventType &&
          other.status == status &&
          other.created == created;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userID.hashCode) +
      (userName.hashCode) +
      (method.hashCode) +
      (eventType.hashCode) +
      (status.hashCode) +
      (created.hashCode);

  @override
  String toString() =>
      'UserAuthLog[userID=$userID, userName=$userName, method=$method, eventType=$eventType, status=$status, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'userID'] = this.userID;
    json[r'userName'] = this.userName;
    json[r'method'] = this.method;
    json[r'eventType'] = this.eventType;
    json[r'status'] = this.status;
    json[r'created'] = this.created;
    return json;
  }

  /// Returns a new [UserAuthLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAuthLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UserAuthLog[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UserAuthLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAuthLog(
        userID: mapValueOfType<String>(json, r'userID')!,
        userName: mapValueOfType<String>(json, r'userName')!,
        method: mapValueOfType<String>(json, r'method')!,
        eventType: mapValueOfType<String>(json, r'eventType')!,
        status: mapValueOfType<String>(json, r'status')!,
        created: mapValueOfType<String>(json, r'created')!,
      );
    }
    return null;
  }

  static List<UserAuthLog> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserAuthLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAuthLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAuthLog> mapFromJson(dynamic json) {
    final map = <String, UserAuthLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAuthLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAuthLog-objects as value to a dart map
  static Map<String, List<UserAuthLog>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserAuthLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAuthLog.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userID',
    'userName',
    'method',
    'eventType',
    'status',
    'created',
  };
}
