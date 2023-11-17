//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectInvite {
  /// Returns a new [ProjectInvite] instance.
  ProjectInvite({
    required this.id,
    required this.projectID,
    required this.email,
    required this.senderID,
    required this.created,
    required this.updated,
    required this.status,
  });

  String id;

  String projectID;

  String email;

  String senderID;

  /// Timestamp in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  String status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectInvite &&
     other.id == id &&
     other.projectID == projectID &&
     other.email == email &&
     other.senderID == senderID &&
     other.created == created &&
     other.updated == updated &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (projectID.hashCode) +
    (email.hashCode) +
    (senderID.hashCode) +
    (created.hashCode) +
    (updated.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'ProjectInvite[id=$id, projectID=$projectID, email=$email, senderID=$senderID, created=$created, updated=$updated, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'projectID'] = this.projectID;
      json[r'email'] = this.email;
      json[r'senderID'] = this.senderID;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [ProjectInvite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectInvite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectInvite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectInvite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectInvite(
        id: mapValueOfType<String>(json, r'id')!,
        projectID: mapValueOfType<String>(json, r'projectID')!,
        email: mapValueOfType<String>(json, r'email')!,
        senderID: mapValueOfType<String>(json, r'senderID')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        status: mapValueOfType<String>(json, r'status')!,
      );
    }
    return null;
  }

  static List<ProjectInvite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectInvite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectInvite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectInvite> mapFromJson(dynamic json) {
    final map = <String, ProjectInvite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectInvite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectInvite-objects as value to a dart map
  static Map<String, List<ProjectInvite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectInvite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectInvite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'projectID',
    'email',
    'senderID',
    'created',
    'updated',
    'status',
  };
}

