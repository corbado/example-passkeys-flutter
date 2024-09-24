//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingBrowserStatsListRspAllOfData {
  /// Returns a new [TrackingBrowserStatsListRspAllOfData] instance.
  TrackingBrowserStatsListRspAllOfData({
    this.stats = const [],
    required this.paging,
  });

  List<TrackingBrowserStats> stats;

  Paging paging;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrackingBrowserStatsListRspAllOfData &&
          other.stats == stats &&
          other.paging == paging;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (stats.hashCode) + (paging.hashCode);

  @override
  String toString() =>
      'TrackingBrowserStatsListRspAllOfData[stats=$stats, paging=$paging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'stats'] = this.stats;
    json[r'paging'] = this.paging;
    return json;
  }

  /// Returns a new [TrackingBrowserStatsListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingBrowserStatsListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TrackingBrowserStatsListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TrackingBrowserStatsListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingBrowserStatsListRspAllOfData(
        stats: TrackingBrowserStats.listFromJson(json[r'stats']),
        paging: Paging.fromJson(json[r'paging'])!,
      );
    }
    return null;
  }

  static List<TrackingBrowserStatsListRspAllOfData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TrackingBrowserStatsListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingBrowserStatsListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingBrowserStatsListRspAllOfData> mapFromJson(
      dynamic json) {
    final map = <String, TrackingBrowserStatsListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            TrackingBrowserStatsListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingBrowserStatsListRspAllOfData-objects as value to a dart map
  static Map<String, List<TrackingBrowserStatsListRspAllOfData>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TrackingBrowserStatsListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingBrowserStatsListRspAllOfData.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'stats',
    'paging',
  };
}
