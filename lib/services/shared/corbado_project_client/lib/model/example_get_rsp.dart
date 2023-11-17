//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExampleGetRsp {
  /// Returns a new [ExampleGetRsp] instance.
  ExampleGetRsp({
    required this.httpStatusCode,
    required this.message,
    required this.requestData,
    required this.runtime,
    required this.data,
    required this.extension_,
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

  /// Base64 encoded data containing the compressed example file
  String data;

  /// The extension of the compressed example file
  ExampleGetRspExtension_Enum extension_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExampleGetRsp &&
     other.httpStatusCode == httpStatusCode &&
     other.message == message &&
     other.requestData == requestData &&
     other.runtime == runtime &&
     other.data == data &&
     other.extension_ == extension_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (httpStatusCode.hashCode) +
    (message.hashCode) +
    (requestData.hashCode) +
    (runtime.hashCode) +
    (data.hashCode) +
    (extension_.hashCode);

  @override
  String toString() => 'ExampleGetRsp[httpStatusCode=$httpStatusCode, message=$message, requestData=$requestData, runtime=$runtime, data=$data, extension_=$extension_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'message'] = this.message;
      json[r'requestData'] = this.requestData;
      json[r'runtime'] = this.runtime;
      json[r'data'] = this.data;
      json[r'extension'] = this.extension_;
    return json;
  }

  /// Returns a new [ExampleGetRsp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExampleGetRsp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExampleGetRsp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExampleGetRsp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExampleGetRsp(
        httpStatusCode: mapValueOfType<int>(json, r'httpStatusCode')!,
        message: mapValueOfType<String>(json, r'message')!,
        requestData: RequestData.fromJson(json[r'requestData'])!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        data: mapValueOfType<String>(json, r'data')!,
        extension_: ExampleGetRspExtension_Enum.fromJson(json[r'extension'])!,
      );
    }
    return null;
  }

  static List<ExampleGetRsp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExampleGetRsp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExampleGetRsp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExampleGetRsp> mapFromJson(dynamic json) {
    final map = <String, ExampleGetRsp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExampleGetRsp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExampleGetRsp-objects as value to a dart map
  static Map<String, List<ExampleGetRsp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExampleGetRsp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExampleGetRsp.listFromJson(entry.value, growable: growable,);
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
    'extension',
  };
}

/// The extension of the compressed example file
class ExampleGetRspExtension_Enum {
  /// Instantiate a new enum with the provided [value].
  const ExampleGetRspExtension_Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const zip = ExampleGetRspExtension_Enum._(r'zip');
  static const tarPeriodGz = ExampleGetRspExtension_Enum._(r'tar.gz');

  /// List of all possible values in this [enum][ExampleGetRspExtension_Enum].
  static const values = <ExampleGetRspExtension_Enum>[
    zip,
    tarPeriodGz,
  ];

  static ExampleGetRspExtension_Enum? fromJson(dynamic value) => ExampleGetRspExtension_EnumTypeTransformer().decode(value);

  static List<ExampleGetRspExtension_Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExampleGetRspExtension_Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExampleGetRspExtension_Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExampleGetRspExtension_Enum] to String,
/// and [decode] dynamic data back to [ExampleGetRspExtension_Enum].
class ExampleGetRspExtension_EnumTypeTransformer {
  factory ExampleGetRspExtension_EnumTypeTransformer() => _instance ??= const ExampleGetRspExtension_EnumTypeTransformer._();

  const ExampleGetRspExtension_EnumTypeTransformer._();

  String encode(ExampleGetRspExtension_Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExampleGetRspExtension_Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExampleGetRspExtension_Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'zip': return ExampleGetRspExtension_Enum.zip;
        case r'tar.gz': return ExampleGetRspExtension_Enum.tarPeriodGz;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExampleGetRspExtension_EnumTypeTransformer] instance.
  static ExampleGetRspExtension_EnumTypeTransformer? _instance;
}


