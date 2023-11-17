//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestLogsListRspAllOfData {
  /// Returns a new [RequestLogsListRspAllOfData] instance.
  RequestLogsListRspAllOfData({
    this.logs = const [],
    required this.paging,
  });

  List<RequestLog> logs;

  Paging paging;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestLogsListRspAllOfData &&
     other.logs == logs &&
     other.paging == paging;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logs.hashCode) +
    (paging.hashCode);

  @override
  String toString() => 'RequestLogsListRspAllOfData[logs=$logs, paging=$paging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'logs'] = this.logs;
      json[r'paging'] = this.paging;
    return json;
  }

  /// Returns a new [RequestLogsListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RequestLogsListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RequestLogsListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RequestLogsListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RequestLogsListRspAllOfData(
        logs: RequestLog.listFromJson(json[r'logs']),
        paging: Paging.fromJson(json[r'paging'])!,
      );
    }
    return null;
  }

  static List<RequestLogsListRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RequestLogsListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RequestLogsListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RequestLogsListRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, RequestLogsListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RequestLogsListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RequestLogsListRspAllOfData-objects as value to a dart map
  static Map<String, List<RequestLogsListRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RequestLogsListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RequestLogsListRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'logs',
    'paging',
  };
}

