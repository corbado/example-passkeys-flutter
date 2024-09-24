//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Email {
  /// Returns a new [Email] instance.
  Email({
    required this.ID,
    required this.email,
    required this.created,
    required this.updated,
    required this.status,
    this.deleted,
  });

  /// ID of the email
  String ID;

  String email;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  Status status;

  /// Timestamp of when the entity was deleted in yyyy-MM-dd'T'HH:mm:ss format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deleted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Email &&
          other.ID == ID &&
          other.email == email &&
          other.created == created &&
          other.updated == updated &&
          other.status == status &&
          other.deleted == deleted;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID.hashCode) +
      (email.hashCode) +
      (created.hashCode) +
      (updated.hashCode) +
      (status.hashCode) +
      (deleted == null ? 0 : deleted!.hashCode);

  @override
  String toString() =>
      'Email[ID=$ID, email=$email, created=$created, updated=$updated, status=$status, deleted=$deleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'ID'] = this.ID;
    json[r'email'] = this.email;
    json[r'created'] = this.created;
    json[r'updated'] = this.updated;
    json[r'status'] = this.status;
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    return json;
  }

  /// Returns a new [Email] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Email? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Email[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Email[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Email(
        ID: mapValueOfType<String>(json, r'ID')!,
        email: mapValueOfType<String>(json, r'email')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        status: Status.fromJson(json[r'status'])!,
        deleted: mapValueOfType<String>(json, r'deleted'),
      );
    }
    return null;
  }

  static List<Email> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Email>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Email.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Email> mapFromJson(dynamic json) {
    final map = <String, Email>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Email.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Email-objects as value to a dart map
  static Map<String, List<Email>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Email>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Email.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ID',
    'email',
    'created',
    'updated',
    'status',
  };
}
