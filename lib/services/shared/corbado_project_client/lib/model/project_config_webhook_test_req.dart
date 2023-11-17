//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectConfigWebhookTestReq {
  /// Returns a new [ProjectConfigWebhookTestReq] instance.
  ProjectConfigWebhookTestReq({
    required this.action,
    this.requestID,
    this.clientInfo,
  });

  ProjectConfigWebhookTestReqActionEnum action;

  /// Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClientInfo? clientInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectConfigWebhookTestReq &&
     other.action == action &&
     other.requestID == requestID &&
     other.clientInfo == clientInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() => 'ProjectConfigWebhookTestReq[action=$action, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
    if (this.requestID != null) {
      json[r'requestID'] = this.requestID;
    } else {
      json[r'requestID'] = null;
    }
    if (this.clientInfo != null) {
      json[r'clientInfo'] = this.clientInfo;
    } else {
      json[r'clientInfo'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectConfigWebhookTestReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectConfigWebhookTestReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectConfigWebhookTestReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectConfigWebhookTestReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectConfigWebhookTestReq(
        action: ProjectConfigWebhookTestReqActionEnum.fromJson(json[r'action'])!,
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<ProjectConfigWebhookTestReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigWebhookTestReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigWebhookTestReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectConfigWebhookTestReq> mapFromJson(dynamic json) {
    final map = <String, ProjectConfigWebhookTestReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectConfigWebhookTestReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectConfigWebhookTestReq-objects as value to a dart map
  static Map<String, List<ProjectConfigWebhookTestReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectConfigWebhookTestReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectConfigWebhookTestReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
  };
}


class ProjectConfigWebhookTestReqActionEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigWebhookTestReqActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const authMethods = ProjectConfigWebhookTestReqActionEnum._(r'authMethods');
  static const passwordVerify = ProjectConfigWebhookTestReqActionEnum._(r'passwordVerify');

  /// List of all possible values in this [enum][ProjectConfigWebhookTestReqActionEnum].
  static const values = <ProjectConfigWebhookTestReqActionEnum>[
    authMethods,
    passwordVerify,
  ];

  static ProjectConfigWebhookTestReqActionEnum? fromJson(dynamic value) => ProjectConfigWebhookTestReqActionEnumTypeTransformer().decode(value);

  static List<ProjectConfigWebhookTestReqActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigWebhookTestReqActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigWebhookTestReqActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigWebhookTestReqActionEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigWebhookTestReqActionEnum].
class ProjectConfigWebhookTestReqActionEnumTypeTransformer {
  factory ProjectConfigWebhookTestReqActionEnumTypeTransformer() => _instance ??= const ProjectConfigWebhookTestReqActionEnumTypeTransformer._();

  const ProjectConfigWebhookTestReqActionEnumTypeTransformer._();

  String encode(ProjectConfigWebhookTestReqActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigWebhookTestReqActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigWebhookTestReqActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'authMethods': return ProjectConfigWebhookTestReqActionEnum.authMethods;
        case r'passwordVerify': return ProjectConfigWebhookTestReqActionEnum.passwordVerify;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigWebhookTestReqActionEnumTypeTransformer] instance.
  static ProjectConfigWebhookTestReqActionEnumTypeTransformer? _instance;
}


