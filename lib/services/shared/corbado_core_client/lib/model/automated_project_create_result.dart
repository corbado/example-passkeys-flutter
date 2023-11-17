//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedProjectCreateResult {
  /// Returns a new [AutomatedProjectCreateResult] instance.
  AutomatedProjectCreateResult({
    required this.id,
    required this.name,
    required this.domain,
    required this.apiSecret,
    required this.externalAddress,
  });

  /// ID of project
  String id;

  String name;

  String domain;

  String apiSecret;

  String externalAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedProjectCreateResult &&
     other.id == id &&
     other.name == name &&
     other.domain == domain &&
     other.apiSecret == apiSecret &&
     other.externalAddress == externalAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (domain.hashCode) +
    (apiSecret.hashCode) +
    (externalAddress.hashCode);

  @override
  String toString() => 'AutomatedProjectCreateResult[id=$id, name=$name, domain=$domain, apiSecret=$apiSecret, externalAddress=$externalAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'domain'] = this.domain;
      json[r'apiSecret'] = this.apiSecret;
      json[r'externalAddress'] = this.externalAddress;
    return json;
  }

  /// Returns a new [AutomatedProjectCreateResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedProjectCreateResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedProjectCreateResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedProjectCreateResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedProjectCreateResult(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        apiSecret: mapValueOfType<String>(json, r'apiSecret')!,
        externalAddress: mapValueOfType<String>(json, r'externalAddress')!,
      );
    }
    return null;
  }

  static List<AutomatedProjectCreateResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedProjectCreateResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedProjectCreateResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedProjectCreateResult> mapFromJson(dynamic json) {
    final map = <String, AutomatedProjectCreateResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedProjectCreateResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedProjectCreateResult-objects as value to a dart map
  static Map<String, List<AutomatedProjectCreateResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedProjectCreateResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedProjectCreateResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'domain',
    'apiSecret',
    'externalAddress',
  };
}

