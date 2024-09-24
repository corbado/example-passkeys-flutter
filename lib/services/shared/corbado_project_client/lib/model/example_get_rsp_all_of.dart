//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExampleGetRspAllOf {
  /// Returns a new [ExampleGetRspAllOf] instance.
  ExampleGetRspAllOf({
    required this.data,
    required this.extension_,
  });

  /// Base64 encoded data containing the compressed example file
  String data;

  /// The extension of the compressed example file
  ExampleGetRspAllOfExtension_Enum extension_;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExampleGetRspAllOf &&
          other.data == data &&
          other.extension_ == extension_;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (data.hashCode) + (extension_.hashCode);

  @override
  String toString() => 'ExampleGetRspAllOf[data=$data, extension_=$extension_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'data'] = this.data;
    json[r'extension'] = this.extension_;
    return json;
  }

  /// Returns a new [ExampleGetRspAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExampleGetRspAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExampleGetRspAllOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExampleGetRspAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExampleGetRspAllOf(
        data: mapValueOfType<String>(json, r'data')!,
        extension_:
            ExampleGetRspAllOfExtension_Enum.fromJson(json[r'extension'])!,
      );
    }
    return null;
  }

  static List<ExampleGetRspAllOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExampleGetRspAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExampleGetRspAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExampleGetRspAllOf> mapFromJson(dynamic json) {
    final map = <String, ExampleGetRspAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExampleGetRspAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExampleGetRspAllOf-objects as value to a dart map
  static Map<String, List<ExampleGetRspAllOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExampleGetRspAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExampleGetRspAllOf.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'extension',
  };
}

/// The extension of the compressed example file
class ExampleGetRspAllOfExtension_Enum {
  /// Instantiate a new enum with the provided [value].
  const ExampleGetRspAllOfExtension_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const zip = ExampleGetRspAllOfExtension_Enum._(r'zip');
  static const tarPeriodGz = ExampleGetRspAllOfExtension_Enum._(r'tar.gz');

  /// List of all possible values in this [enum][ExampleGetRspAllOfExtension_Enum].
  static const values = <ExampleGetRspAllOfExtension_Enum>[
    zip,
    tarPeriodGz,
  ];

  static ExampleGetRspAllOfExtension_Enum? fromJson(dynamic value) =>
      ExampleGetRspAllOfExtension_EnumTypeTransformer().decode(value);

  static List<ExampleGetRspAllOfExtension_Enum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExampleGetRspAllOfExtension_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExampleGetRspAllOfExtension_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExampleGetRspAllOfExtension_Enum] to String,
/// and [decode] dynamic data back to [ExampleGetRspAllOfExtension_Enum].
class ExampleGetRspAllOfExtension_EnumTypeTransformer {
  factory ExampleGetRspAllOfExtension_EnumTypeTransformer() =>
      _instance ??= const ExampleGetRspAllOfExtension_EnumTypeTransformer._();

  const ExampleGetRspAllOfExtension_EnumTypeTransformer._();

  String encode(ExampleGetRspAllOfExtension_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExampleGetRspAllOfExtension_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExampleGetRspAllOfExtension_Enum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'zip':
          return ExampleGetRspAllOfExtension_Enum.zip;
        case r'tar.gz':
          return ExampleGetRspAllOfExtension_Enum.tarPeriodGz;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExampleGetRspAllOfExtension_EnumTypeTransformer] instance.
  static ExampleGetRspAllOfExtension_EnumTypeTransformer? _instance;
}
