//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailLinkSendRspAllOfData {
  /// Returns a new [EmailLinkSendRspAllOfData] instance.
  EmailLinkSendRspAllOfData({
    required this.emailLinkID,
  });

  String emailLinkID;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailLinkSendRspAllOfData && other.emailLinkID == emailLinkID;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (emailLinkID.hashCode);

  @override
  String toString() => 'EmailLinkSendRspAllOfData[emailLinkID=$emailLinkID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'emailLinkID'] = this.emailLinkID;
    return json;
  }

  /// Returns a new [EmailLinkSendRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailLinkSendRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailLinkSendRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailLinkSendRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailLinkSendRspAllOfData(
        emailLinkID: mapValueOfType<String>(json, r'emailLinkID')!,
      );
    }
    return null;
  }

  static List<EmailLinkSendRspAllOfData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailLinkSendRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailLinkSendRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailLinkSendRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, EmailLinkSendRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailLinkSendRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailLinkSendRspAllOfData-objects as value to a dart map
  static Map<String, List<EmailLinkSendRspAllOfData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailLinkSendRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailLinkSendRspAllOfData.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailLinkID',
  };
}
