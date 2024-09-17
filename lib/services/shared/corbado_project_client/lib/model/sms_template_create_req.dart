//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsTemplateCreateReq {
  /// Returns a new [SmsTemplateCreateReq] instance.
  SmsTemplateCreateReq({
    required this.type,
    required this.name,
    required this.textPlain,
    required this.isDefault,
    this.requestID,
    this.clientInfo,
  });

  SmsTemplateCreateReqTypeEnum type;

  String name;

  String textPlain;

  bool isDefault;

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
      other is SmsTemplateCreateReq &&
          other.type == type &&
          other.name == name &&
          other.textPlain == textPlain &&
          other.isDefault == isDefault &&
          other.requestID == requestID &&
          other.clientInfo == clientInfo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type.hashCode) +
      (name.hashCode) +
      (textPlain.hashCode) +
      (isDefault.hashCode) +
      (requestID == null ? 0 : requestID!.hashCode) +
      (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() =>
      'SmsTemplateCreateReq[type=$type, name=$name, textPlain=$textPlain, isDefault=$isDefault, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'type'] = this.type;
    json[r'name'] = this.name;
    json[r'textPlain'] = this.textPlain;
    json[r'isDefault'] = this.isDefault;
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

  /// Returns a new [SmsTemplateCreateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsTemplateCreateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SmsTemplateCreateReq[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SmsTemplateCreateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsTemplateCreateReq(
        type: SmsTemplateCreateReqTypeEnum.fromJson(json[r'type'])!,
        name: mapValueOfType<String>(json, r'name')!,
        textPlain: mapValueOfType<String>(json, r'textPlain')!,
        isDefault: mapValueOfType<bool>(json, r'isDefault')!,
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<SmsTemplateCreateReq> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SmsTemplateCreateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsTemplateCreateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsTemplateCreateReq> mapFromJson(dynamic json) {
    final map = <String, SmsTemplateCreateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsTemplateCreateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsTemplateCreateReq-objects as value to a dart map
  static Map<String, List<SmsTemplateCreateReq>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SmsTemplateCreateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmsTemplateCreateReq.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'name',
    'textPlain',
    'isDefault',
  };
}

class SmsTemplateCreateReqTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SmsTemplateCreateReqTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const smsCode = SmsTemplateCreateReqTypeEnum._(r'sms_code');
  static const passkeyNotification =
      SmsTemplateCreateReqTypeEnum._(r'passkey_notification');

  /// List of all possible values in this [enum][SmsTemplateCreateReqTypeEnum].
  static const values = <SmsTemplateCreateReqTypeEnum>[
    smsCode,
    passkeyNotification,
  ];

  static SmsTemplateCreateReqTypeEnum? fromJson(dynamic value) =>
      SmsTemplateCreateReqTypeEnumTypeTransformer().decode(value);

  static List<SmsTemplateCreateReqTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SmsTemplateCreateReqTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsTemplateCreateReqTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SmsTemplateCreateReqTypeEnum] to String,
/// and [decode] dynamic data back to [SmsTemplateCreateReqTypeEnum].
class SmsTemplateCreateReqTypeEnumTypeTransformer {
  factory SmsTemplateCreateReqTypeEnumTypeTransformer() =>
      _instance ??= const SmsTemplateCreateReqTypeEnumTypeTransformer._();

  const SmsTemplateCreateReqTypeEnumTypeTransformer._();

  String encode(SmsTemplateCreateReqTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SmsTemplateCreateReqTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SmsTemplateCreateReqTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sms_code':
          return SmsTemplateCreateReqTypeEnum.smsCode;
        case r'passkey_notification':
          return SmsTemplateCreateReqTypeEnum.passkeyNotification;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SmsTemplateCreateReqTypeEnumTypeTransformer] instance.
  static SmsTemplateCreateReqTypeEnumTypeTransformer? _instance;
}
