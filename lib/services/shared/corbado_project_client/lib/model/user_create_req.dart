//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCreateReq {
  /// Returns a new [UserCreateReq] instance.
  UserCreateReq({
    required this.name,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.requestID,
    this.clientInfo,
  });

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumber;

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
  bool operator ==(Object other) => identical(this, other) || other is UserCreateReq &&
     other.name == name &&
     other.fullName == fullName &&
     other.email == email &&
     other.phoneNumber == phoneNumber &&
     other.requestID == requestID &&
     other.clientInfo == clientInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() => 'UserCreateReq[name=$name, fullName=$fullName, email=$email, phoneNumber=$phoneNumber, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
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

  /// Returns a new [UserCreateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCreateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserCreateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserCreateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCreateReq(
        name: mapValueOfType<String>(json, r'name')!,
        fullName: mapValueOfType<String>(json, r'fullName'),
        email: mapValueOfType<String>(json, r'email'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<UserCreateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCreateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCreateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCreateReq> mapFromJson(dynamic json) {
    final map = <String, UserCreateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCreateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCreateReq-objects as value to a dart map
  static Map<String, List<UserCreateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCreateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCreateReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

