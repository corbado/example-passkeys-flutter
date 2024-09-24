//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailLinkValidateRspAllOf {
  /// Returns a new [EmailLinkValidateRspAllOf] instance.
  EmailLinkValidateRspAllOf({
    required this.userID,
    required this.userFullName,
    required this.userEmail,
    this.additionalPayload,
    this.loginToken,
  });

  /// ID of the user
  String userID;

  String userFullName;

  String userEmail;

  /// Additional payload in JSON format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? additionalPayload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginToken;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailLinkValidateRspAllOf &&
          other.userID == userID &&
          other.userFullName == userFullName &&
          other.userEmail == userEmail &&
          other.additionalPayload == additionalPayload &&
          other.loginToken == loginToken;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (userID.hashCode) +
      (userFullName.hashCode) +
      (userEmail.hashCode) +
      (additionalPayload == null ? 0 : additionalPayload!.hashCode) +
      (loginToken == null ? 0 : loginToken!.hashCode);

  @override
  String toString() =>
      'EmailLinkValidateRspAllOf[userID=$userID, userFullName=$userFullName, userEmail=$userEmail, additionalPayload=$additionalPayload, loginToken=$loginToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'userID'] = this.userID;
    json[r'userFullName'] = this.userFullName;
    json[r'userEmail'] = this.userEmail;
    if (this.additionalPayload != null) {
      json[r'additionalPayload'] = this.additionalPayload;
    } else {
      json[r'additionalPayload'] = null;
    }
    if (this.loginToken != null) {
      json[r'loginToken'] = this.loginToken;
    } else {
      json[r'loginToken'] = null;
    }
    return json;
  }

  /// Returns a new [EmailLinkValidateRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailLinkValidateRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailLinkValidateRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailLinkValidateRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailLinkValidateRspAllOf(
        userID: mapValueOfType<String>(json, r'userID')!,
        userFullName: mapValueOfType<String>(json, r'userFullName')!,
        userEmail: mapValueOfType<String>(json, r'userEmail')!,
        additionalPayload: mapValueOfType<String>(json, r'additionalPayload'),
        loginToken: mapValueOfType<String>(json, r'loginToken'),
      );
    }
    return null;
  }

  static List<EmailLinkValidateRspAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailLinkValidateRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailLinkValidateRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailLinkValidateRspAllOf> mapFromJson(dynamic json) {
    final map = <String, EmailLinkValidateRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailLinkValidateRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailLinkValidateRspAllOf-objects as value to a dart map
  static Map<String, List<EmailLinkValidateRspAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailLinkValidateRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailLinkValidateRspAllOf.listFromJson(
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
    'userFullName',
    'userEmail',
  };
}
