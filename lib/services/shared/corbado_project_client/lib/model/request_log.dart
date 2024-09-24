//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestLog {
  /// Returns a new [RequestLog] instance.
  RequestLog({
    required this.requestID,
    required this.projectID,
    required this.userID,
    required this.application,
    required this.method,
    required this.endpoint,
    required this.source_,
    required this.request,
    required this.queryParams,
    required this.responseStatus,
    required this.response,
    required this.runtime,
    required this.remoteAddress,
    required this.created,
    required this.tags,
    this.details = const [],
  });

  /// Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side
  String requestID;

  /// ID of project
  String projectID;

  /// ID of the user
  String userID;

  /// Application this request was processed with
  String application;

  /// HTTP method (such as GET and POST)
  String method;

  /// Endpoint that was requested
  String endpoint;

  /// Request source
  String source_;

  /// Request JSON data
  String request;

  /// Request query parameters
  String queryParams;

  /// Response HTTP status
  int responseStatus;

  /// Response JSON data
  String response;

  /// Runtime in seconds for this request
  double runtime;

  /// Caller remote address
  String remoteAddress;

  /// Timestamp of when the request was performed in RFC3339 format
  String created;

  /// Arbitrary tags attached to this request
  Object tags;

  /// Any freetext additional information attached to this request. Additional logs, errors, etc.
  List<String> details;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RequestLog &&
          other.requestID == requestID &&
          other.projectID == projectID &&
          other.userID == userID &&
          other.application == application &&
          other.method == method &&
          other.endpoint == endpoint &&
          other.source_ == source_ &&
          other.request == request &&
          other.queryParams == queryParams &&
          other.responseStatus == responseStatus &&
          other.response == response &&
          other.runtime == runtime &&
          other.remoteAddress == remoteAddress &&
          other.created == created &&
          other.tags == tags &&
          other.details == details;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (requestID.hashCode) +
      (projectID.hashCode) +
      (userID.hashCode) +
      (application.hashCode) +
      (method.hashCode) +
      (endpoint.hashCode) +
      (source_.hashCode) +
      (request.hashCode) +
      (queryParams.hashCode) +
      (responseStatus.hashCode) +
      (response.hashCode) +
      (runtime.hashCode) +
      (remoteAddress.hashCode) +
      (created.hashCode) +
      (tags.hashCode) +
      (details.hashCode);

  @override
  String toString() =>
      'RequestLog[requestID=$requestID, projectID=$projectID, userID=$userID, application=$application, method=$method, endpoint=$endpoint, source_=$source_, request=$request, queryParams=$queryParams, responseStatus=$responseStatus, response=$response, runtime=$runtime, remoteAddress=$remoteAddress, created=$created, tags=$tags, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'requestID'] = this.requestID;
    json[r'projectID'] = this.projectID;
    json[r'userID'] = this.userID;
    json[r'application'] = this.application;
    json[r'method'] = this.method;
    json[r'endpoint'] = this.endpoint;
    json[r'source'] = this.source_;
    json[r'request'] = this.request;
    json[r'queryParams'] = this.queryParams;
    json[r'responseStatus'] = this.responseStatus;
    json[r'response'] = this.response;
    json[r'runtime'] = this.runtime;
    json[r'remoteAddress'] = this.remoteAddress;
    json[r'created'] = this.created;
    json[r'tags'] = this.tags;
    json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [RequestLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RequestLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RequestLog[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RequestLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RequestLog(
        requestID: mapValueOfType<String>(json, r'requestID')!,
        projectID: mapValueOfType<String>(json, r'projectID')!,
        userID: mapValueOfType<String>(json, r'userID')!,
        application: mapValueOfType<String>(json, r'application')!,
        method: mapValueOfType<String>(json, r'method')!,
        endpoint: mapValueOfType<String>(json, r'endpoint')!,
        source_: mapValueOfType<String>(json, r'source')!,
        request: mapValueOfType<String>(json, r'request')!,
        queryParams: mapValueOfType<String>(json, r'queryParams')!,
        responseStatus: mapValueOfType<int>(json, r'responseStatus')!,
        response: mapValueOfType<String>(json, r'response')!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        remoteAddress: mapValueOfType<String>(json, r'remoteAddress')!,
        created: mapValueOfType<String>(json, r'created')!,
        tags: mapValueOfType<Object>(json, r'tags')!,
        details: json[r'details'] is List
            ? (json[r'details'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<RequestLog> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RequestLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RequestLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RequestLog> mapFromJson(dynamic json) {
    final map = <String, RequestLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RequestLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RequestLog-objects as value to a dart map
  static Map<String, List<RequestLog>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RequestLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RequestLog.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'requestID',
    'projectID',
    'userID',
    'application',
    'method',
    'endpoint',
    'source',
    'request',
    'queryParams',
    'responseStatus',
    'response',
    'runtime',
    'remoteAddress',
    'created',
    'tags',
    'details',
  };
}
