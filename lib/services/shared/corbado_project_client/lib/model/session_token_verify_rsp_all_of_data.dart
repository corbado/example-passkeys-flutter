//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionTokenVerifyRspAllOfData {
  /// Returns a new [SessionTokenVerifyRspAllOfData] instance.
  SessionTokenVerifyRspAllOfData({
    required this.userID,
    required this.user,
    required this.userData,
  });

  /// ID of the user
  String userID;

  FullUser user;

  String userData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionTokenVerifyRspAllOfData &&
     other.userID == userID &&
     other.user == user &&
     other.userData == userData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userID.hashCode) +
    (user.hashCode) +
    (userData.hashCode);

  @override
  String toString() => 'SessionTokenVerifyRspAllOfData[userID=$userID, user=$user, userData=$userData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userID'] = this.userID;
      json[r'user'] = this.user;
      json[r'userData'] = this.userData;
    return json;
  }

  /// Returns a new [SessionTokenVerifyRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionTokenVerifyRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionTokenVerifyRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionTokenVerifyRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionTokenVerifyRspAllOfData(
        userID: mapValueOfType<String>(json, r'userID')!,
        user: FullUser.fromJson(json[r'user'])!,
        userData: mapValueOfType<String>(json, r'userData')!,
      );
    }
    return null;
  }

  static List<SessionTokenVerifyRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionTokenVerifyRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionTokenVerifyRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionTokenVerifyRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, SessionTokenVerifyRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionTokenVerifyRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionTokenVerifyRspAllOfData-objects as value to a dart map
  static Map<String, List<SessionTokenVerifyRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionTokenVerifyRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionTokenVerifyRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userID',
    'user',
    'userData',
  };
}

