//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailTemplateCreateRspAllOfData {
  /// Returns a new [EmailTemplateCreateRspAllOfData] instance.
  EmailTemplateCreateRspAllOfData({
    required this.emailTemplateID,
  });

  String emailTemplateID;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailTemplateCreateRspAllOfData &&
          other.emailTemplateID == emailTemplateID;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (emailTemplateID.hashCode);

  @override
  String toString() =>
      'EmailTemplateCreateRspAllOfData[emailTemplateID=$emailTemplateID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'emailTemplateID'] = this.emailTemplateID;
    return json;
  }

  /// Returns a new [EmailTemplateCreateRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailTemplateCreateRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailTemplateCreateRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailTemplateCreateRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailTemplateCreateRspAllOfData(
        emailTemplateID: mapValueOfType<String>(json, r'emailTemplateID')!,
      );
    }
    return null;
  }

  static List<EmailTemplateCreateRspAllOfData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailTemplateCreateRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailTemplateCreateRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailTemplateCreateRspAllOfData> mapFromJson(
      dynamic json) {
    final map = <String, EmailTemplateCreateRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailTemplateCreateRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailTemplateCreateRspAllOfData-objects as value to a dart map
  static Map<String, List<EmailTemplateCreateRspAllOfData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailTemplateCreateRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailTemplateCreateRspAllOfData.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailTemplateID',
  };
}
