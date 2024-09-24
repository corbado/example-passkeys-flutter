//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingOSDetailedStats {
  /// Returns a new [TrackingOSDetailedStats] instance.
  TrackingOSDetailedStats({
    required this.timePoint,
    required this.osName,
    required this.osVersion,
    required this.osPlatform,
    required this.cnt,
    required this.webauthn,
    required this.platform,
    required this.conditionalUi,
  });

  String timePoint;

  String osName;

  String osVersion;

  TrackingOSDetailedStatsOsPlatformEnum osPlatform;

  int cnt;

  int webauthn;

  int platform;

  int conditionalUi;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrackingOSDetailedStats &&
          other.timePoint == timePoint &&
          other.osName == osName &&
          other.osVersion == osVersion &&
          other.osPlatform == osPlatform &&
          other.cnt == cnt &&
          other.webauthn == webauthn &&
          other.platform == platform &&
          other.conditionalUi == conditionalUi;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (timePoint.hashCode) +
      (osName.hashCode) +
      (osVersion.hashCode) +
      (osPlatform.hashCode) +
      (cnt.hashCode) +
      (webauthn.hashCode) +
      (platform.hashCode) +
      (conditionalUi.hashCode);

  @override
  String toString() =>
      'TrackingOSDetailedStats[timePoint=$timePoint, osName=$osName, osVersion=$osVersion, osPlatform=$osPlatform, cnt=$cnt, webauthn=$webauthn, platform=$platform, conditionalUi=$conditionalUi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'timePoint'] = this.timePoint;
    json[r'osName'] = this.osName;
    json[r'osVersion'] = this.osVersion;
    json[r'osPlatform'] = this.osPlatform;
    json[r'cnt'] = this.cnt;
    json[r'webauthn'] = this.webauthn;
    json[r'platform'] = this.platform;
    json[r'conditional_ui'] = this.conditionalUi;
    return json;
  }

  /// Returns a new [TrackingOSDetailedStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingOSDetailedStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TrackingOSDetailedStats[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TrackingOSDetailedStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingOSDetailedStats(
        timePoint: mapValueOfType<String>(json, r'timePoint')!,
        osName: mapValueOfType<String>(json, r'osName')!,
        osVersion: mapValueOfType<String>(json, r'osVersion')!,
        osPlatform: TrackingOSDetailedStatsOsPlatformEnum.fromJson(
            json[r'osPlatform'])!,
        cnt: mapValueOfType<int>(json, r'cnt')!,
        webauthn: mapValueOfType<int>(json, r'webauthn')!,
        platform: mapValueOfType<int>(json, r'platform')!,
        conditionalUi: mapValueOfType<int>(json, r'conditional_ui')!,
      );
    }
    return null;
  }

  static List<TrackingOSDetailedStats> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TrackingOSDetailedStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingOSDetailedStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingOSDetailedStats> mapFromJson(dynamic json) {
    final map = <String, TrackingOSDetailedStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingOSDetailedStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingOSDetailedStats-objects as value to a dart map
  static Map<String, List<TrackingOSDetailedStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TrackingOSDetailedStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingOSDetailedStats.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timePoint',
    'osName',
    'osVersion',
    'osPlatform',
    'cnt',
    'webauthn',
    'platform',
    'conditional_ui',
  };
}

class TrackingOSDetailedStatsOsPlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const TrackingOSDetailedStatsOsPlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const desktop = TrackingOSDetailedStatsOsPlatformEnum._(r'desktop');
  static const mobile = TrackingOSDetailedStatsOsPlatformEnum._(r'mobile');
  static const unknown = TrackingOSDetailedStatsOsPlatformEnum._(r'unknown');

  /// List of all possible values in this [enum][TrackingOSDetailedStatsOsPlatformEnum].
  static const values = <TrackingOSDetailedStatsOsPlatformEnum>[
    desktop,
    mobile,
    unknown,
  ];

  static TrackingOSDetailedStatsOsPlatformEnum? fromJson(dynamic value) =>
      TrackingOSDetailedStatsOsPlatformEnumTypeTransformer().decode(value);

  static List<TrackingOSDetailedStatsOsPlatformEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TrackingOSDetailedStatsOsPlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingOSDetailedStatsOsPlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TrackingOSDetailedStatsOsPlatformEnum] to String,
/// and [decode] dynamic data back to [TrackingOSDetailedStatsOsPlatformEnum].
class TrackingOSDetailedStatsOsPlatformEnumTypeTransformer {
  factory TrackingOSDetailedStatsOsPlatformEnumTypeTransformer() =>
      _instance ??=
          const TrackingOSDetailedStatsOsPlatformEnumTypeTransformer._();

  const TrackingOSDetailedStatsOsPlatformEnumTypeTransformer._();

  String encode(TrackingOSDetailedStatsOsPlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TrackingOSDetailedStatsOsPlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TrackingOSDetailedStatsOsPlatformEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'desktop':
          return TrackingOSDetailedStatsOsPlatformEnum.desktop;
        case r'mobile':
          return TrackingOSDetailedStatsOsPlatformEnum.mobile;
        case r'unknown':
          return TrackingOSDetailedStatsOsPlatformEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TrackingOSDetailedStatsOsPlatformEnumTypeTransformer] instance.
  static TrackingOSDetailedStatsOsPlatformEnumTypeTransformer? _instance;
}
