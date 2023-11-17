//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCustomLoginIdentifierCreateReq {
  /// Returns a new [UserCustomLoginIdentifierCreateReq] instance.
  UserCustomLoginIdentifierCreateReq({
    required this.customLoginIdentifier,
    this.additionalData,
    this.requestID,
    this.clientInfo,
  });

  String customLoginIdentifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? additionalData;

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
  bool operator ==(Object other) => identical(this, other) || other is UserCustomLoginIdentifierCreateReq &&
     other.customLoginIdentifier == customLoginIdentifier &&
     other.additionalData == additionalData &&
     other.requestID == requestID &&
     other.clientInfo == clientInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customLoginIdentifier.hashCode) +
    (additionalData == null ? 0 : additionalData!.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() => 'UserCustomLoginIdentifierCreateReq[customLoginIdentifier=$customLoginIdentifier, additionalData=$additionalData, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customLoginIdentifier'] = this.customLoginIdentifier;
    if (this.additionalData != null) {
      json[r'additionalData'] = this.additionalData;
    } else {
      json[r'additionalData'] = null;
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

  /// Returns a new [UserCustomLoginIdentifierCreateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCustomLoginIdentifierCreateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserCustomLoginIdentifierCreateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserCustomLoginIdentifierCreateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCustomLoginIdentifierCreateReq(
        customLoginIdentifier: mapValueOfType<String>(json, r'customLoginIdentifier')!,
        additionalData: mapValueOfType<String>(json, r'additionalData'),
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<UserCustomLoginIdentifierCreateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCustomLoginIdentifierCreateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCustomLoginIdentifierCreateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCustomLoginIdentifierCreateReq> mapFromJson(dynamic json) {
    final map = <String, UserCustomLoginIdentifierCreateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCustomLoginIdentifierCreateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCustomLoginIdentifierCreateReq-objects as value to a dart map
  static Map<String, List<UserCustomLoginIdentifierCreateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCustomLoginIdentifierCreateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCustomLoginIdentifierCreateReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customLoginIdentifier',
  };
}

