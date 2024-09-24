//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IOSAppConfigUpdateReq {
  /// Returns a new [IOSAppConfigUpdateReq] instance.
  IOSAppConfigUpdateReq({
    required this.appIDPrefix,
    required this.bundleID,
    this.requestID,
    this.clientInfo,
  });

  String appIDPrefix;

  String bundleID;

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
      other is IOSAppConfigUpdateReq &&
          other.appIDPrefix == appIDPrefix &&
          other.bundleID == bundleID &&
          other.requestID == requestID &&
          other.clientInfo == clientInfo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (appIDPrefix.hashCode) +
      (bundleID.hashCode) +
      (requestID == null ? 0 : requestID!.hashCode) +
      (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() =>
      'IOSAppConfigUpdateReq[appIDPrefix=$appIDPrefix, bundleID=$bundleID, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'appIDPrefix'] = this.appIDPrefix;
    json[r'bundleID'] = this.bundleID;
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

  /// Returns a new [IOSAppConfigUpdateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IOSAppConfigUpdateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IOSAppConfigUpdateReq[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IOSAppConfigUpdateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IOSAppConfigUpdateReq(
        appIDPrefix: mapValueOfType<String>(json, r'appIDPrefix')!,
        bundleID: mapValueOfType<String>(json, r'bundleID')!,
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<IOSAppConfigUpdateReq> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IOSAppConfigUpdateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IOSAppConfigUpdateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IOSAppConfigUpdateReq> mapFromJson(dynamic json) {
    final map = <String, IOSAppConfigUpdateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IOSAppConfigUpdateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IOSAppConfigUpdateReq-objects as value to a dart map
  static Map<String, List<IOSAppConfigUpdateReq>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IOSAppConfigUpdateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IOSAppConfigUpdateReq.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'appIDPrefix',
    'bundleID',
  };
}
