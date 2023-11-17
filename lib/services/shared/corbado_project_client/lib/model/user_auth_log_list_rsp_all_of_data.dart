//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserAuthLogListRspAllOfData {
  /// Returns a new [UserAuthLogListRspAllOfData] instance.
  UserAuthLogListRspAllOfData({
    this.rows = const [],
    required this.paging,
  });

  List<UserAuthLog> rows;

  Paging paging;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAuthLogListRspAllOfData &&
     other.rows == rows &&
     other.paging == paging;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rows.hashCode) +
    (paging.hashCode);

  @override
  String toString() => 'UserAuthLogListRspAllOfData[rows=$rows, paging=$paging]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rows'] = this.rows;
      json[r'paging'] = this.paging;
    return json;
  }

  /// Returns a new [UserAuthLogListRspAllOfData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAuthLogListRspAllOfData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAuthLogListRspAllOfData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAuthLogListRspAllOfData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAuthLogListRspAllOfData(
        rows: UserAuthLog.listFromJson(json[r'rows']),
        paging: Paging.fromJson(json[r'paging'])!,
      );
    }
    return null;
  }

  static List<UserAuthLogListRspAllOfData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAuthLogListRspAllOfData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAuthLogListRspAllOfData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAuthLogListRspAllOfData> mapFromJson(dynamic json) {
    final map = <String, UserAuthLogListRspAllOfData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAuthLogListRspAllOfData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAuthLogListRspAllOfData-objects as value to a dart map
  static Map<String, List<UserAuthLogListRspAllOfData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAuthLogListRspAllOfData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAuthLogListRspAllOfData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rows',
    'paging',
  };
}

