//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailCode {
  /// Returns a new [EmailCode] instance.
  EmailCode({
    required this.ID,
    required this.userID,
    required this.email,
    required this.additionalPayload,
    required this.created,
    required this.updated,
    required this.status,
    this.userFullName,
  });

  /// ID of the email OTP
  String ID;

  /// ID of the user
  String userID;

  String email;

  /// Additional payload in JSON format
  String additionalPayload;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  /// status values of an email OTP
  EmailCodeStatusEnum status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userFullName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailCode &&
     other.ID == ID &&
     other.userID == userID &&
     other.email == email &&
     other.additionalPayload == additionalPayload &&
     other.created == created &&
     other.updated == updated &&
     other.status == status &&
     other.userFullName == userFullName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ID.hashCode) +
    (userID.hashCode) +
    (email.hashCode) +
    (additionalPayload.hashCode) +
    (created.hashCode) +
    (updated.hashCode) +
    (status.hashCode) +
    (userFullName == null ? 0 : userFullName!.hashCode);

  @override
  String toString() => 'EmailCode[ID=$ID, userID=$userID, email=$email, additionalPayload=$additionalPayload, created=$created, updated=$updated, status=$status, userFullName=$userFullName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ID'] = this.ID;
      json[r'userID'] = this.userID;
      json[r'email'] = this.email;
      json[r'additionalPayload'] = this.additionalPayload;
      json[r'created'] = this.created;
      json[r'updated'] = this.updated;
      json[r'status'] = this.status;
    if (this.userFullName != null) {
      json[r'userFullName'] = this.userFullName;
    } else {
      json[r'userFullName'] = null;
    }
    return json;
  }

  /// Returns a new [EmailCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailCode(
        ID: mapValueOfType<String>(json, r'ID')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        email: mapValueOfType<String>(json, r'email')!,
        additionalPayload: mapValueOfType<String>(json, r'additionalPayload')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        status: EmailCodeStatusEnum.fromJson(json[r'status'])!,
        userFullName: mapValueOfType<String>(json, r'userFullName'),
      );
    }
    return null;
  }

  static List<EmailCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailCode> mapFromJson(dynamic json) {
    final map = <String, EmailCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailCode-objects as value to a dart map
  static Map<String, List<EmailCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ID',
    'userID',
    'email',
    'additionalPayload',
    'created',
    'updated',
    'status',
  };
}

/// status values of an email OTP
class EmailCodeStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailCodeStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = EmailCodeStatusEnum._(r'active');
  static const confirmed = EmailCodeStatusEnum._(r'confirmed');

  /// List of all possible values in this [enum][EmailCodeStatusEnum].
  static const values = <EmailCodeStatusEnum>[
    active,
    confirmed,
  ];

  static EmailCodeStatusEnum? fromJson(dynamic value) => EmailCodeStatusEnumTypeTransformer().decode(value);

  static List<EmailCodeStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailCodeStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailCodeStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailCodeStatusEnum] to String,
/// and [decode] dynamic data back to [EmailCodeStatusEnum].
class EmailCodeStatusEnumTypeTransformer {
  factory EmailCodeStatusEnumTypeTransformer() => _instance ??= const EmailCodeStatusEnumTypeTransformer._();

  const EmailCodeStatusEnumTypeTransformer._();

  String encode(EmailCodeStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailCodeStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailCodeStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return EmailCodeStatusEnum.active;
        case r'confirmed': return EmailCodeStatusEnum.confirmed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailCodeStatusEnumTypeTransformer] instance.
  static EmailCodeStatusEnumTypeTransformer? _instance;
}


