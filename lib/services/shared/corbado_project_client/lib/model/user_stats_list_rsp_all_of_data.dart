//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserStatsListRspAllOfData {
  /// Returns a new [UserStatsListRspAllOfData] instance.
  UserStatsListRspAllOfData({
    this.stats = const [],
    required this.paging,
  });

  List<UserStats> stats;

  Paging paging;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserStatsListRspAllOfData &&
     other.stats == stats &&
     other.paging == paging;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stats.hashCode) +
    (paging.hashCode);

  @override
  String toString() => 'UserStatsListRspAllOfData[stats=$stats, paging=$paging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'stats'] = this.stats;
      json[r'paging'] = this.paging;
    return json;
  }

  /// Returns a new [UserStatsListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserStatsListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserStatsListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserStatsListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserStatsListRspAllOfData(
        stats: UserStats.listFromJson(json[r'stats']),
        paging: Paging.fromJson(json[r'paging'])!,
      );
    }
    return null;
  }

  static List<UserStatsListRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserStatsListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserStatsListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserStatsListRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, UserStatsListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserStatsListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserStatsListRspAllOfData-objects as value to a dart map
  static Map<String, List<UserStatsListRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserStatsListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserStatsListRspAllOfData.listFromJson(entry.value, growable: growable,);
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

