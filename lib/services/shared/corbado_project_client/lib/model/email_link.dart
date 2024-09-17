//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailLink {
  /// Returns a new [EmailLink] instance.
  EmailLink({
    required this.ID,
    required this.userID,
    required this.email,
    required this.created,
    required this.updated,
    required this.status,
    required this.additionalPayload,
    this.userFullName,
    this.purpose,
  });

  /// ID of the email magic link
  String ID;

  /// ID of the user
  String userID;

  String email;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  /// status values of an email link
  EmailLinkStatusEnum status;

  /// Additional payload in JSON format
  String additionalPayload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userFullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailLink &&
          other.ID == ID &&
          other.userID == userID &&
          other.email == email &&
          other.created == created &&
          other.updated == updated &&
          other.status == status &&
          other.additionalPayload == additionalPayload &&
          other.userFullName == userFullName &&
          other.purpose == purpose;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID.hashCode) +
      (userID.hashCode) +
      (email.hashCode) +
      (created.hashCode) +
      (updated.hashCode) +
      (status.hashCode) +
      (additionalPayload.hashCode) +
      (userFullName == null ? 0 : userFullName!.hashCode) +
      (purpose == null ? 0 : purpose!.hashCode);

  @override
  String toString() =>
      'EmailLink[ID=$ID, userID=$userID, email=$email, created=$created, updated=$updated, status=$status, additionalPayload=$additionalPayload, userFullName=$userFullName, purpose=$purpose]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'ID'] = this.ID;
    json[r'userID'] = this.userID;
    json[r'email'] = this.email;
    json[r'created'] = this.created;
    json[r'updated'] = this.updated;
    json[r'status'] = this.status;
    json[r'additionalPayload'] = this.additionalPayload;
    if (this.userFullName != null) {
      json[r'userFullName'] = this.userFullName;
    } else {
      json[r'userFullName'] = null;
    }
    if (this.purpose != null) {
      json[r'purpose'] = this.purpose;
    } else {
      json[r'purpose'] = null;
    }
    return json;
  }

  /// Returns a new [EmailLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailLink[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailLink[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailLink(
        ID: mapValueOfType<String>(json, r'ID')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        email: mapValueOfType<String>(json, r'email')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        status: EmailLinkStatusEnum.fromJson(json[r'status'])!,
        additionalPayload: mapValueOfType<String>(json, r'additionalPayload')!,
        userFullName: mapValueOfType<String>(json, r'userFullName'),
        purpose: mapValueOfType<String>(json, r'purpose'),
      );
    }
    return null;
  }

  static List<EmailLink> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailLink> mapFromJson(dynamic json) {
    final map = <String, EmailLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailLink-objects as value to a dart map
  static Map<String, List<EmailLink>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailLink.listFromJson(
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
    'userID',
    'email',
    'created',
    'updated',
    'status',
    'additionalPayload',
  };
}

/// status values of an email link
class EmailLinkStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailLinkStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = EmailLinkStatusEnum._(r'active');
  static const confirmed = EmailLinkStatusEnum._(r'confirmed');

  /// List of all possible values in this [enum][EmailLinkStatusEnum].
  static const values = <EmailLinkStatusEnum>[
    active,
    confirmed,
  ];

  static EmailLinkStatusEnum? fromJson(dynamic value) =>
      EmailLinkStatusEnumTypeTransformer().decode(value);

  static List<EmailLinkStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailLinkStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailLinkStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailLinkStatusEnum] to String,
/// and [decode] dynamic data back to [EmailLinkStatusEnum].
class EmailLinkStatusEnumTypeTransformer {
  factory EmailLinkStatusEnumTypeTransformer() =>
      _instance ??= const EmailLinkStatusEnumTypeTransformer._();

  const EmailLinkStatusEnumTypeTransformer._();

  String encode(EmailLinkStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailLinkStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailLinkStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active':
          return EmailLinkStatusEnum.active;
        case r'confirmed':
          return EmailLinkStatusEnum.confirmed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailLinkStatusEnumTypeTransformer] instance.
  static EmailLinkStatusEnumTypeTransformer? _instance;
}
