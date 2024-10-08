//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1ProjectsPostRequest {
  /// Returns a new [V1ProjectsPostRequest] instance.
  V1ProjectsPostRequest({
    required this.name,
    required this.allowStaticChallenges,
    required this.webauthnRPID,
  });

  /// The name of the project (minimum 3 characters).
  String name;

  bool allowStaticChallenges;

  String webauthnRPID;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is V1ProjectsPostRequest &&
          other.name == name &&
          other.allowStaticChallenges == allowStaticChallenges &&
          other.webauthnRPID == webauthnRPID;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (allowStaticChallenges.hashCode) +
      (webauthnRPID.hashCode);

  @override
  String toString() =>
      'V1ProjectsPostRequest[name=$name, allowStaticChallenges=$allowStaticChallenges, webauthnRPID=$webauthnRPID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = this.name;
    json[r'allowStaticChallenges'] = this.allowStaticChallenges;
    json[r'webauthnRPID'] = this.webauthnRPID;
    return json;
  }

  /// Returns a new [V1ProjectsPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1ProjectsPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "V1ProjectsPostRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "V1ProjectsPostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1ProjectsPostRequest(
        name: mapValueOfType<String>(json, r'name')!,
        allowStaticChallenges:
            mapValueOfType<bool>(json, r'allowStaticChallenges')!,
        webauthnRPID: mapValueOfType<String>(json, r'webauthnRPID')!,
      );
    }
    return null;
  }

  static List<V1ProjectsPostRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <V1ProjectsPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1ProjectsPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1ProjectsPostRequest> mapFromJson(dynamic json) {
    final map = <String, V1ProjectsPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1ProjectsPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1ProjectsPostRequest-objects as value to a dart map
  static Map<String, List<V1ProjectsPostRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<V1ProjectsPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1ProjectsPostRequest.listFromJson(
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
    'allowStaticChallenges',
    'webauthnRPID',
  };
}
