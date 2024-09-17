//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailTemplateCreateReq {
  /// Returns a new [EmailTemplateCreateReq] instance.
  EmailTemplateCreateReq({
    required this.lang,
    required this.type,
    required this.name,
    required this.subject,
    required this.plainTextBody,
    required this.htmlTextTitle,
    required this.htmlTextBody,
    required this.htmlTextButton,
    required this.htmlColorFont,
    required this.htmlColorBackgroundOuter,
    required this.htmlColorBackgroundInner,
    required this.htmlColorButton,
    required this.htmlColorButtonFont,
    required this.isDefault,
    this.action,
    this.requestID,
    this.clientInfo,
  });

  EmailTemplateCreateReqLangEnum lang;

  EmailTemplateCreateReqTypeEnum type;

  String name;

  String subject;

  String plainTextBody;

  String htmlTextTitle;

  String htmlTextBody;

  String htmlTextButton;

  String htmlColorFont;

  String htmlColorBackgroundOuter;

  String htmlColorBackgroundInner;

  String htmlColorButton;

  String htmlColorButtonFont;

  bool isDefault;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailTemplateCreateReq &&
          other.lang == lang &&
          other.type == type &&
          other.name == name &&
          other.subject == subject &&
          other.plainTextBody == plainTextBody &&
          other.htmlTextTitle == htmlTextTitle &&
          other.htmlTextBody == htmlTextBody &&
          other.htmlTextButton == htmlTextButton &&
          other.htmlColorFont == htmlColorFont &&
          other.htmlColorBackgroundOuter == htmlColorBackgroundOuter &&
          other.htmlColorBackgroundInner == htmlColorBackgroundInner &&
          other.htmlColorButton == htmlColorButton &&
          other.htmlColorButtonFont == htmlColorButtonFont &&
          other.isDefault == isDefault &&
          other.action == action &&
          other.requestID == requestID &&
          other.clientInfo == clientInfo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lang.hashCode) +
      (type.hashCode) +
      (name.hashCode) +
      (subject.hashCode) +
      (plainTextBody.hashCode) +
      (htmlTextTitle.hashCode) +
      (htmlTextBody.hashCode) +
      (htmlTextButton.hashCode) +
      (htmlColorFont.hashCode) +
      (htmlColorBackgroundOuter.hashCode) +
      (htmlColorBackgroundInner.hashCode) +
      (htmlColorButton.hashCode) +
      (htmlColorButtonFont.hashCode) +
      (isDefault.hashCode) +
      (action == null ? 0 : action!.hashCode) +
      (requestID == null ? 0 : requestID!.hashCode) +
      (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() =>
      'EmailTemplateCreateReq[lang=$lang, type=$type, name=$name, subject=$subject, plainTextBody=$plainTextBody, htmlTextTitle=$htmlTextTitle, htmlTextBody=$htmlTextBody, htmlTextButton=$htmlTextButton, htmlColorFont=$htmlColorFont, htmlColorBackgroundOuter=$htmlColorBackgroundOuter, htmlColorBackgroundInner=$htmlColorBackgroundInner, htmlColorButton=$htmlColorButton, htmlColorButtonFont=$htmlColorButtonFont, isDefault=$isDefault, action=$action, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'lang'] = this.lang;
    json[r'type'] = this.type;
    json[r'name'] = this.name;
    json[r'subject'] = this.subject;
    json[r'plainTextBody'] = this.plainTextBody;
    json[r'htmlTextTitle'] = this.htmlTextTitle;
    json[r'htmlTextBody'] = this.htmlTextBody;
    json[r'htmlTextButton'] = this.htmlTextButton;
    json[r'htmlColorFont'] = this.htmlColorFont;
    json[r'htmlColorBackgroundOuter'] = this.htmlColorBackgroundOuter;
    json[r'htmlColorBackgroundInner'] = this.htmlColorBackgroundInner;
    json[r'htmlColorButton'] = this.htmlColorButton;
    json[r'htmlColorButtonFont'] = this.htmlColorButtonFont;
    json[r'isDefault'] = this.isDefault;
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
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

  /// Returns a new [EmailTemplateCreateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailTemplateCreateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EmailTemplateCreateReq[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EmailTemplateCreateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailTemplateCreateReq(
        lang: EmailTemplateCreateReqLangEnum.fromJson(json[r'lang'])!,
        type: EmailTemplateCreateReqTypeEnum.fromJson(json[r'type'])!,
        name: mapValueOfType<String>(json, r'name')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        plainTextBody: mapValueOfType<String>(json, r'plainTextBody')!,
        htmlTextTitle: mapValueOfType<String>(json, r'htmlTextTitle')!,
        htmlTextBody: mapValueOfType<String>(json, r'htmlTextBody')!,
        htmlTextButton: mapValueOfType<String>(json, r'htmlTextButton')!,
        htmlColorFont: mapValueOfType<String>(json, r'htmlColorFont')!,
        htmlColorBackgroundOuter:
            mapValueOfType<String>(json, r'htmlColorBackgroundOuter')!,
        htmlColorBackgroundInner:
            mapValueOfType<String>(json, r'htmlColorBackgroundInner')!,
        htmlColorButton: mapValueOfType<String>(json, r'htmlColorButton')!,
        htmlColorButtonFont:
            mapValueOfType<String>(json, r'htmlColorButtonFont')!,
        isDefault: mapValueOfType<bool>(json, r'isDefault')!,
        action: mapValueOfType<String>(json, r'action'),
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<EmailTemplateCreateReq> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailTemplateCreateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailTemplateCreateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailTemplateCreateReq> mapFromJson(dynamic json) {
    final map = <String, EmailTemplateCreateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailTemplateCreateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailTemplateCreateReq-objects as value to a dart map
  static Map<String, List<EmailTemplateCreateReq>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EmailTemplateCreateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailTemplateCreateReq.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lang',
    'type',
    'name',
    'subject',
    'plainTextBody',
    'htmlTextTitle',
    'htmlTextBody',
    'htmlTextButton',
    'htmlColorFont',
    'htmlColorBackgroundOuter',
    'htmlColorBackgroundInner',
    'htmlColorButton',
    'htmlColorButtonFont',
    'isDefault',
  };
}

class EmailTemplateCreateReqLangEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailTemplateCreateReqLangEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const en = EmailTemplateCreateReqLangEnum._(r'en');
  static const de = EmailTemplateCreateReqLangEnum._(r'de');

  /// List of all possible values in this [enum][EmailTemplateCreateReqLangEnum].
  static const values = <EmailTemplateCreateReqLangEnum>[
    en,
    de,
  ];

  static EmailTemplateCreateReqLangEnum? fromJson(dynamic value) =>
      EmailTemplateCreateReqLangEnumTypeTransformer().decode(value);

  static List<EmailTemplateCreateReqLangEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailTemplateCreateReqLangEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailTemplateCreateReqLangEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailTemplateCreateReqLangEnum] to String,
/// and [decode] dynamic data back to [EmailTemplateCreateReqLangEnum].
class EmailTemplateCreateReqLangEnumTypeTransformer {
  factory EmailTemplateCreateReqLangEnumTypeTransformer() =>
      _instance ??= const EmailTemplateCreateReqLangEnumTypeTransformer._();

  const EmailTemplateCreateReqLangEnumTypeTransformer._();

  String encode(EmailTemplateCreateReqLangEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailTemplateCreateReqLangEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailTemplateCreateReqLangEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'en':
          return EmailTemplateCreateReqLangEnum.en;
        case r'de':
          return EmailTemplateCreateReqLangEnum.de;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailTemplateCreateReqLangEnumTypeTransformer] instance.
  static EmailTemplateCreateReqLangEnumTypeTransformer? _instance;
}

class EmailTemplateCreateReqTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailTemplateCreateReqTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const emailLink = EmailTemplateCreateReqTypeEnum._(r'email_link');
  static const emailLinkLogin =
      EmailTemplateCreateReqTypeEnum._(r'email_link_login');
  static const loginNotification =
      EmailTemplateCreateReqTypeEnum._(r'login_notification');
  static const passkeyNotification =
      EmailTemplateCreateReqTypeEnum._(r'passkey_notification');

  /// List of all possible values in this [enum][EmailTemplateCreateReqTypeEnum].
  static const values = <EmailTemplateCreateReqTypeEnum>[
    emailLink,
    emailLinkLogin,
    loginNotification,
    passkeyNotification,
  ];

  static EmailTemplateCreateReqTypeEnum? fromJson(dynamic value) =>
      EmailTemplateCreateReqTypeEnumTypeTransformer().decode(value);

  static List<EmailTemplateCreateReqTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EmailTemplateCreateReqTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailTemplateCreateReqTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailTemplateCreateReqTypeEnum] to String,
/// and [decode] dynamic data back to [EmailTemplateCreateReqTypeEnum].
class EmailTemplateCreateReqTypeEnumTypeTransformer {
  factory EmailTemplateCreateReqTypeEnumTypeTransformer() =>
      _instance ??= const EmailTemplateCreateReqTypeEnumTypeTransformer._();

  const EmailTemplateCreateReqTypeEnumTypeTransformer._();

  String encode(EmailTemplateCreateReqTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailTemplateCreateReqTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailTemplateCreateReqTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email_link':
          return EmailTemplateCreateReqTypeEnum.emailLink;
        case r'email_link_login':
          return EmailTemplateCreateReqTypeEnum.emailLinkLogin;
        case r'login_notification':
          return EmailTemplateCreateReqTypeEnum.loginNotification;
        case r'passkey_notification':
          return EmailTemplateCreateReqTypeEnum.passkeyNotification;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailTemplateCreateReqTypeEnumTypeTransformer] instance.
  static EmailTemplateCreateReqTypeEnumTypeTransformer? _instance;
}
