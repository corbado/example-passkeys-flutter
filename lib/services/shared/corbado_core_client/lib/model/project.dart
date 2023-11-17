//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Project {
  /// Returns a new [Project] instance.
  Project({
    required this.id,
    required this.name,
    required this.applicationUrl,
    required this.environment,
    required this.externalAddress,
    required this.internalPublicAddress,
    required this.internalPrivateAddress,
    required this.created,
    required this.updated,
    this.domain,
    this.authSuccessRedirectUrl,
  });

  /// ID of project
  String id;

  String name;

  String applicationUrl;

  String environment;

  String externalAddress;

  String internalPublicAddress;

  String internalPrivateAddress;

  /// Timestamp in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authSuccessRedirectUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Project &&
     other.id == id &&
     other.name == name &&
     other.applicationUrl == applicationUrl &&
     other.environment == environment &&
     other.externalAddress == externalAddress &&
     other.internalPublicAddress == internalPublicAddress &&
     other.internalPrivateAddress == internalPrivateAddress &&
     other.created == created &&
     other.updated == updated &&
     other.domain == domain &&
     other.authSuccessRedirectUrl == authSuccessRedirectUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (applicationUrl.hashCode) +
    (environment.hashCode) +
    (externalAddress.hashCode) +
    (internalPublicAddress.hashCode) +
    (internalPrivateAddress.hashCode) +
    (created.hashCode) +
    (updated.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (authSuccessRedirectUrl == null ? 0 : authSuccessRedirectUrl!.hashCode);

  @override
  String toString() => 'Project[id=$id, name=$name, applicationUrl=$applicationUrl, environment=$environment, externalAddress=$externalAddress, internalPublicAddress=$internalPublicAddress, internalPrivateAddress=$internalPrivateAddress, created=$created, updated=$updated, domain=$domain, authSuccessRedirectUrl=$authSuccessRedirectUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'applicationUrl'] = this.applicationUrl;
      json[r'environment'] = this.environment;
      json[r'externalAddress'] = this.externalAddress;
      json[r'internalPublicAddress'] = this.internalPublicAddress;
      json[r'internalPrivateAddress'] = this.internalPrivateAddress;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.authSuccessRedirectUrl != null) {
      json[r'authSuccessRedirectUrl'] = this.authSuccessRedirectUrl;
    } else {
      json[r'authSuccessRedirectUrl'] = null;
    }
    return json;
  }

  /// Returns a new [Project] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Project? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Project[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Project[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Project(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        applicationUrl: mapValueOfType<String>(json, r'applicationUrl')!,
        environment: mapValueOfType<String>(json, r'environment')!,
        externalAddress: mapValueOfType<String>(json, r'externalAddress')!,
        internalPublicAddress: mapValueOfType<String>(json, r'internalPublicAddress')!,
        internalPrivateAddress: mapValueOfType<String>(json, r'internalPrivateAddress')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        domain: mapValueOfType<String>(json, r'domain'),
        authSuccessRedirectUrl: mapValueOfType<String>(json, r'authSuccessRedirectUrl'),
      );
    }
    return null;
  }

  static List<Project> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Project>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Project.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Project> mapFromJson(dynamic json) {
    final map = <String, Project>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Project.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Project>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Project.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'applicationUrl',
    'environment',
    'externalAddress',
    'internalPublicAddress',
    'internalPrivateAddress',
    'created',
    'updated',
  };
}

