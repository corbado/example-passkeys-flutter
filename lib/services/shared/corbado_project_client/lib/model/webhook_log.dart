//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookLog {
  /// Returns a new [WebhookLog] instance.
  WebhookLog({
    required this.webhookID,
    required this.projectID,
    required this.action,
    required this.responseID,
    required this.requestURL,
    required this.requestBody,
    required this.responseStatus,
    required this.responseHeaders,
    required this.responseBody,
    required this.responseError,
    required this.runtime,
    required this.created,
  });

  /// Unique ID of webhook request which will be randomly generated on server side
  String webhookID;

  /// ID of project
  String projectID;

  /// Webhook action
  String action;

  /// Unique ID of response, you can provide your own while responding to the webhook, if not the ID will be randomly generated on server side. This has the same meaning as overriding requestID for API requests. 
  String responseID;

  /// Absolute request URL of webhook backend
  String requestURL;

  /// Request contents that were sent to webhook backend
  String requestBody;

  /// Response HTTP status that was returned by webhook backend
  int responseStatus;

  /// Response HTTP headers that were returned by webhook backend
  Object responseHeaders;

  /// Response body JSON data that was returned by webhook backend
  String responseBody;

  /// Response error if present
  String responseError;

  /// Runtime in seconds for this request
  double runtime;

  /// Timestamp of when the request was performed in RFC3339 format
  String created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebhookLog &&
     other.webhookID == webhookID &&
     other.projectID == projectID &&
     other.action == action &&
     other.responseID == responseID &&
     other.requestURL == requestURL &&
     other.requestBody == requestBody &&
     other.responseStatus == responseStatus &&
     other.responseHeaders == responseHeaders &&
     other.responseBody == responseBody &&
     other.responseError == responseError &&
     other.runtime == runtime &&
     other.created == created;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (webhookID.hashCode) +
    (projectID.hashCode) +
    (action.hashCode) +
    (responseID.hashCode) +
    (requestURL.hashCode) +
    (requestBody.hashCode) +
    (responseStatus.hashCode) +
    (responseHeaders.hashCode) +
    (responseBody.hashCode) +
    (responseError.hashCode) +
    (runtime.hashCode) +
    (created.hashCode);

  @override
  String toString() => 'WebhookLog[webhookID=$webhookID, projectID=$projectID, action=$action, responseID=$responseID, requestURL=$requestURL, requestBody=$requestBody, responseStatus=$responseStatus, responseHeaders=$responseHeaders, responseBody=$responseBody, responseError=$responseError, runtime=$runtime, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'webhookID'] = this.webhookID;
      json[r'projectID'] = this.projectID;
      json[r'action'] = this.action;
      json[r'responseID'] = this.responseID;
      json[r'requestURL'] = this.requestURL;
      json[r'requestBody'] = this.requestBody;
      json[r'responseStatus'] = this.responseStatus;
      json[r'responseHeaders'] = this.responseHeaders;
      json[r'responseBody'] = this.responseBody;
      json[r'responseError'] = this.responseError;
      json[r'runtime'] = this.runtime;
      json[r'created'] = this.created;
    return json;
  }

  /// Returns a new [WebhookLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebhookLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebhookLog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebhookLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebhookLog(
        webhookID: mapValueOfType<String>(json, r'webhookID')!,
        projectID: mapValueOfType<String>(json, r'projectID')!,
        action: mapValueOfType<String>(json, r'action')!,
        responseID: mapValueOfType<String>(json, r'responseID')!,
        requestURL: mapValueOfType<String>(json, r'requestURL')!,
        requestBody: mapValueOfType<String>(json, r'requestBody')!,
        responseStatus: mapValueOfType<int>(json, r'responseStatus')!,
        responseHeaders: mapValueOfType<Object>(json, r'responseHeaders')!,
        responseBody: mapValueOfType<String>(json, r'responseBody')!,
        responseError: mapValueOfType<String>(json, r'responseError')!,
        runtime: mapValueOfType<double>(json, r'runtime')!,
        created: mapValueOfType<String>(json, r'created')!,
      );
    }
    return null;
  }

  static List<WebhookLog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebhookLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebhookLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebhookLog> mapFromJson(dynamic json) {
    final map = <String, WebhookLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebhookLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebhookLog-objects as value to a dart map
  static Map<String, List<WebhookLog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebhookLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebhookLog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'webhookID',
    'projectID',
    'action',
    'responseID',
    'requestURL',
    'requestBody',
    'responseStatus',
    'responseHeaders',
    'responseBody',
    'responseError',
    'runtime',
    'created',
  };
}

