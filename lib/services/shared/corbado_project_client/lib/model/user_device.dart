//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserDevice {
  /// Returns a new [UserDevice] instance.
  UserDevice({
    required this.name,
    required this.fingerprint,
    required this.status,
    required this.device,
    required this.created,
    required this.browserName,
    required this.browserVersion,
    required this.osName,
    required this.osVersion,
  });

  String name;

  String fingerprint;

  String status;

  String device;

  String created;

  String browserName;

  String browserVersion;

  String osName;

  String osVersion;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDevice &&
          other.name == name &&
          other.fingerprint == fingerprint &&
          other.status == status &&
          other.device == device &&
          other.created == created &&
          other.browserName == browserName &&
          other.browserVersion == browserVersion &&
          other.osName == osName &&
          other.osVersion == osVersion;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (fingerprint.hashCode) +
      (status.hashCode) +
      (device.hashCode) +
      (created.hashCode) +
      (browserName.hashCode) +
      (browserVersion.hashCode) +
      (osName.hashCode) +
      (osVersion.hashCode);

  @override
  String toString() =>
      'UserDevice[name=$name, fingerprint=$fingerprint, status=$status, device=$device, created=$created, browserName=$browserName, browserVersion=$browserVersion, osName=$osName, osVersion=$osVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = this.name;
    json[r'fingerprint'] = this.fingerprint;
    json[r'status'] = this.status;
    json[r'device'] = this.device;
    json[r'created'] = this.created;
    json[r'browserName'] = this.browserName;
    json[r'browserVersion'] = this.browserVersion;
    json[r'osName'] = this.osName;
    json[r'osVersion'] = this.osVersion;
    return json;
  }

  /// Returns a new [UserDevice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserDevice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "UserDevice[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "UserDevice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserDevice(
        name: mapValueOfType<String>(json, r'name')!,
        fingerprint: mapValueOfType<String>(json, r'fingerprint')!,
        status: mapValueOfType<String>(json, r'status')!,
        device: mapValueOfType<String>(json, r'device')!,
        created: mapValueOfType<String>(json, r'created')!,
        browserName: mapValueOfType<String>(json, r'browserName')!,
        browserVersion: mapValueOfType<String>(json, r'browserVersion')!,
        osName: mapValueOfType<String>(json, r'osName')!,
        osVersion: mapValueOfType<String>(json, r'osVersion')!,
      );
    }
    return null;
  }

  static List<UserDevice> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserDevice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDevice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserDevice> mapFromJson(dynamic json) {
    final map = <String, UserDevice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDevice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserDevice-objects as value to a dart map
  static Map<String, List<UserDevice>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserDevice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserDevice.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'fingerprint',
    'status',
    'device',
    'created',
    'browserName',
    'browserVersion',
    'osName',
    'osVersion',
  };
}
