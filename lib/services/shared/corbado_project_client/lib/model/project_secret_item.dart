//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectSecretItem {
  /// Returns a new [ProjectSecretItem] instance.
  ProjectSecretItem({
    required this.id,
    required this.hint,
    required this.created,
    this.secret,
  });

  /// ID of project secret
  String id;

  /// Hint of the server-side generated secret. First 3 characters and last 3 characters
  String hint;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Server-side generated secret. Only filled on create
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectSecretItem &&
          other.id == id &&
          other.hint == hint &&
          other.created == created &&
          other.secret == secret;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (hint.hashCode) +
      (created.hashCode) +
      (secret == null ? 0 : secret!.hashCode);

  @override
  String toString() =>
      'ProjectSecretItem[id=$id, hint=$hint, created=$created, secret=$secret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'hint'] = this.hint;
    json[r'created'] = this.created;
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectSecretItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectSecretItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ProjectSecretItem[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ProjectSecretItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectSecretItem(
        id: mapValueOfType<String>(json, r'id')!,
        hint: mapValueOfType<String>(json, r'hint')!,
        created: mapValueOfType<String>(json, r'created')!,
        secret: mapValueOfType<String>(json, r'secret'),
      );
    }
    return null;
  }

  static List<ProjectSecretItem> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectSecretItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectSecretItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectSecretItem> mapFromJson(dynamic json) {
    final map = <String, ProjectSecretItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectSecretItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectSecretItem-objects as value to a dart map
  static Map<String, List<ProjectSecretItem>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProjectSecretItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectSecretItem.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'hint',
    'created',
  };
}
