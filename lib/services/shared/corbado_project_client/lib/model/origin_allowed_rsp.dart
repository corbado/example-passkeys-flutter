//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OriginAllowedRsp {
  /// Returns a new [OriginAllowedRsp] instance.
  OriginAllowedRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.allowed,
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

  bool allowed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OriginAllowedRsp &&
          other.httpStatusCode == httpStatusCode &&
          other.message == message &&
          other.requestData == requestData &&
          other.runtime == runtime &&
          other.allowed == allowed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (httpStatusCode.hashCode) +
      (message.hashCode) +
      (requestData.hashCode) +
      (runtime.hashCode) +
      (allowed.hashCode);

  @override
  String toString() =>
      'OriginAllowedRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, allowed=$allowed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'httpStatusCode'] = this.httpStatusCode;
    json[r'message'] = this.message;
    json[r'requestData'] = this.requestData;
    json[r'runtime'] = this.runtime;
    json[r'allowed'] = this.allowed;
    return json;
  }

  /// Returns a new [OriginAllowedRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OriginAllowedRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OriginAllowedRsp[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OriginAllowedRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OriginAllowedRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        allowed: mapValueOfType<bool>(json, r'allowed')!,
      );
    }
    return null;
  }

  static List<OriginAllowedRsp> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OriginAllowedRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OriginAllowedRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OriginAllowedRsp> mapFromJson(dynamic json) {
    final map = <String, OriginAllowedRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OriginAllowedRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OriginAllowedRsp-objects as value to a dart map
  static Map<String, List<OriginAllowedRsp>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OriginAllowedRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OriginAllowedRsp.listFromJson(
          entry.value,
          growable: growable,
        );
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
    'allowed',
  };
}
