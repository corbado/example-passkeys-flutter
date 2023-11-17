//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationEmail {
  /// Returns a new [ValidationEmail] instance.
  ValidationEmail({
    required this.username,
    required this.domain,
    required this.reachable,
    required this.disposable,
    required this.free,
    required this.hasMxRecords,
  });

  String username;

  String domain;

  String reachable;

  bool disposable;

  bool free;

  bool hasMxRecords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationEmail &&
     other.username == username &&
     other.domain == domain &&
     other.reachable == reachable &&
     other.disposable == disposable &&
     other.free == free &&
     other.hasMxRecords == hasMxRecords;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (domain.hashCode) +
    (reachable.hashCode) +
    (disposable.hashCode) +
    (free.hashCode) +
    (hasMxRecords.hashCode);

  @override
  String toString() => 'ValidationEmail[username=$username, domain=$domain, reachable=$reachable, disposable=$disposable, free=$free, hasMxRecords=$hasMxRecords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'domain'] = this.domain;
      json[r'reachable'] = this.reachable;
      json[r'disposable'] = this.disposable;
      json[r'free'] = this.free;
      json[r'hasMxRecords'] = this.hasMxRecords;
    return json;
  }

  /// Returns a new [ValidationEmail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationEmail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidationEmail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidationEmail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidationEmail(
        username: mapValueOfType<String>(json, r'username')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        reachable: mapValueOfType<String>(json, r'reachable')!,
        disposable: mapValueOfType<bool>(json, r'disposable')!,
        free: mapValueOfType<bool>(json, r'free')!,
        hasMxRecords: mapValueOfType<bool>(json, r'hasMxRecords')!,
      );
    }
    return null;
  }

  static List<ValidationEmail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationEmail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationEmail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidationEmail> mapFromJson(dynamic json) {
    final map = <String, ValidationEmail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidationEmail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidationEmail-objects as value to a dart map
  static Map<String, List<ValidationEmail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidationEmail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidationEmail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'domain',
    'reachable',
    'disposable',
    'free',
    'hasMxRecords',
  };
}

