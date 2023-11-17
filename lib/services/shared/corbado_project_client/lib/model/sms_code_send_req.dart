//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsCodeSendReq {
  /// Returns a new [SmsCodeSendReq] instance.
  SmsCodeSendReq({
    required this.phoneNumber,
    required this.create,
    this.userFullName,
    this.templateName,
    this.requestID,
    this.clientInfo,
  });

  /// Recipient phone number
  String phoneNumber;

  /// Defines if user phone number should be created if not found
  bool create;

  /// Optional user's full name to be used if the user wasn't found and needs to be created first
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userFullName;

  /// Template name of SMS to send
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateName;

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
  bool operator ==(Object other) => identical(this, other) || other is SmsCodeSendReq &&
     other.phoneNumber == phoneNumber &&
     other.create == create &&
     other.userFullName == userFullName &&
     other.templateName == templateName &&
     other.requestID == requestID &&
     other.clientInfo == clientInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneNumber.hashCode) +
    (create.hashCode) +
    (userFullName == null ? 0 : userFullName!.hashCode) +
    (templateName == null ? 0 : templateName!.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() => 'SmsCodeSendReq[phoneNumber=$phoneNumber, create=$create, userFullName=$userFullName, templateName=$templateName, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'create'] = this.create;
    if (this.userFullName != null) {
      json[r'userFullName'] = this.userFullName;
    } else {
      json[r'userFullName'] = null;
    }
    if (this.templateName != null) {
      json[r'templateName'] = this.templateName;
    } else {
      json[r'templateName'] = null;
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

  /// Returns a new [SmsCodeSendReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsCodeSendReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmsCodeSendReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmsCodeSendReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsCodeSendReq(
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        create: mapValueOfType<bool>(json, r'create')!,
        userFullName: mapValueOfType<String>(json, r'userFullName'),
        templateName: mapValueOfType<String>(json, r'templateName'),
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<SmsCodeSendReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsCodeSendReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsCodeSendReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsCodeSendReq> mapFromJson(dynamic json) {
    final map = <String, SmsCodeSendReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsCodeSendReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsCodeSendReq-objects as value to a dart map
  static Map<String, List<SmsCodeSendReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmsCodeSendReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmsCodeSendReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumber',
    'create',
  };
}

