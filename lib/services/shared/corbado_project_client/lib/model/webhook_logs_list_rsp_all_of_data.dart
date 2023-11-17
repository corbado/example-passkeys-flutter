//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookLogsListRspAllOfData {
  /// Returns a new [WebhookLogsListRspAllOfData] instance.
  WebhookLogsListRspAllOfData({
    this.logs = const [],
    required this.paging,
  });

  List<WebhookLog> logs;

  Paging paging;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookLogsListRspAllOfData &&
     other.logs == logs &&
     other.paging == paging;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logs.hashCode) +
    (paging.hashCode);

  @override
  String toString() => 'WebhookLogsListRspAllOfData[logs=$logs, paging=$paging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'logs'] = this.logs;
      json[r'paging'] = this.paging;
    return json;
  }

  /// Returns a new [WebhookLogsListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookLogsListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookLogsListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookLogsListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookLogsListRspAllOfData(
        logs: WebhookLog.listFromJson(json[r'logs']),
        paging: Paging.fromJson(json[r'paging'])!,
      );
    }
    return null;
  }

  static List<WebhookLogsListRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookLogsListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookLogsListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookLogsListRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, WebhookLogsListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookLogsListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookLogsListRspAllOfData-objects as value to a dart map
  static Map<String, List<WebhookLogsListRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookLogsListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookLogsListRspAllOfData.listFromJson(entry.value, growable: growable,);
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

