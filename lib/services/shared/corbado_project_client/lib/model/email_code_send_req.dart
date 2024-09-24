//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailCodeSendReq {
  /// Returns a new [EmailCodeSendReq] instance.
  EmailCodeSendReq({
    required this.email,
    required this.create,
    this.tokenLifetime,
    this.userFullName,
    this.templateName,
    this.additionalPayload,
    this.requestID,
    this.clientInfo,
  });

  /// Recipient email address
  String email;

  /// Defines if user email should be created if not found
  bool create;

  /// Defines the lifetime of the token that needs to be validated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenLifetime;

  /// Optional user's full name to be used if the user wasn't found and needs to be created first
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userFullName;

  /// Template name of email to send
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateName;

  /// Additional payload in JSON format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? additionalPayload;

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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailCodeSendReq &&
          other.email == email &&
          other.create == create &&
          other.tokenLifetime == tokenLifetime &&
          other.userFullName == userFullName &&
          other.templateName == templateName &&
          other.additionalPayload == additionalPayload &&
          other.requestID == requestID &&
          other.clientInfo == clientInfo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode) +
      (create.hashCode) +
      (tokenLifetime == null ? 0 : tokenLifetime!.hashCode) +
      (userFullName == null ? 0 : userFullName!.hashCode) +
      (templateName == null ? 0 : templateName!.hashCode) +
      (additionalPayload == null ? 0 : additionalPayload!.hashCode) +
      (requestID == null ? 0 : requestID!.hashCode) +
      (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() =>
      'EmailCodeSendReq[email=$email, create=$create, tokenLifetime=$tokenLifetime, userFullName=$userFullName, templateName=$templateName, additionalPayload=$additionalPayload, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'email'] = this.email;
    json[r'create'] = this.create;
    if (this.tokenLifetime != null) {
      json[r'tokenLifetime'] = this.tokenLifetime;
    } else {
      json[r'tokenLifetime'] = null;
    }
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
    if (this.additionalPayload != null) {
      json[r'additionalPayload'] = this.additionalPayload;
    } else {
      json[r'additionalPayload'] = null;
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

  /// Returns a new [EmailCodeSendReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailCodeSendReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailCodeSendReq[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailCodeSendReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailCodeSendReq(
        email: mapValueOfType<String>(json, r'email')!,
        create: mapValueOfType<bool>(json, r'create')!,
        tokenLifetime: mapValueOfType<String>(json, r'tokenLifetime'),
        userFullName: mapValueOfType<String>(json, r'userFullName'),
        templateName: mapValueOfType<String>(json, r'templateName'),
        additionalPayload: mapValueOfType<String>(json, r'additionalPayload'),
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<EmailCodeSendReq> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailCodeSendReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailCodeSendReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailCodeSendReq> mapFromJson(dynamic json) {
    final map = <String, EmailCodeSendReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailCodeSendReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailCodeSendReq-objects as value to a dart map
  static Map<String, List<EmailCodeSendReq>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailCodeSendReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailCodeSendReq.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'create',
  };
}
