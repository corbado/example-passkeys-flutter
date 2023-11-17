//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserCustomLoginIdentifierGetRsp {
  /// Returns a new [UserCustomLoginIdentifierGetRsp] instance.
  UserCustomLoginIdentifierGetRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.data,
  });

  /// HTTP status code of operation
  ///
  /// Minimum value: 200
  /// Maximum value: 599
  int httpStatusCode;

  String message;

  RequestData requestData;

  /// Runtime in seconds for this request
  double runtime;

  UserCustomLoginIdentifierGetRspAllOfData data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCustomLoginIdentifierGetRsp &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (httpStatusCode.hashCode) +
    (message.hashCode) +
    (requestData.hashCode) +
    (runtime.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'UserCustomLoginIdentifierGetRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [UserCustomLoginIdentifierGetRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCustomLoginIdentifierGetRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserCustomLoginIdentifierGetRsp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserCustomLoginIdentifierGetRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCustomLoginIdentifierGetRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        data: UserCustomLoginIdentifierGetRspAllOfData.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<UserCustomLoginIdentifierGetRsp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCustomLoginIdentifierGetRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCustomLoginIdentifierGetRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCustomLoginIdentifierGetRsp> mapFromJson(dynamic json) {
    final map = <String, UserCustomLoginIdentifierGetRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCustomLoginIdentifierGetRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCustomLoginIdentifierGetRsp-objects as value to a dart map
  static Map<String, List<UserCustomLoginIdentifierGetRsp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCustomLoginIdentifierGetRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCustomLoginIdentifierGetRsp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'httpStatusCode',
    'message',
    'requestData',
    'runtime',
    'data',
  };
}

