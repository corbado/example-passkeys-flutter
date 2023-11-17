//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.eu-1.corbado.com', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AutomatedProjectCreateReq':
          return AutomatedProjectCreateReq.fromJson(value);
        case 'AutomatedProjectCreateResult':
          return AutomatedProjectCreateResult.fromJson(value);
        case 'AutomatedProjectCreateRsp':
          return AutomatedProjectCreateRsp.fromJson(value);
        case 'AutomatedProjectCreateRspAllOf':
          return AutomatedProjectCreateRspAllOf.fromJson(value);
        case 'ClientInfo':
          return ClientInfo.fromJson(value);
        case 'ErrorRsp':
          return ErrorRsp.fromJson(value);
        case 'ErrorRspAllOf':
          return ErrorRspAllOf.fromJson(value);
        case 'ErrorRspAllOfError':
          return ErrorRspAllOfError.fromJson(value);
        case 'ErrorRspAllOfErrorValidation':
          return ErrorRspAllOfErrorValidation.fromJson(value);
        case 'GenericRsp':
          return GenericRsp.fromJson(value);
        case 'MeDeleteReq':
          return MeDeleteReq.fromJson(value);
        case 'MeRsp':
          return MeRsp.fromJson(value);
        case 'MeRspAllOf':
          return MeRspAllOf.fromJson(value);
        case 'Paging':
          return Paging.fromJson(value);
        case 'Project':
          return Project.fromJson(value);
        case 'ProjectCreateReq':
          return ProjectCreateReq.fromJson(value);
        case 'ProjectCreateResult':
          return ProjectCreateResult.fromJson(value);
        case 'ProjectCreateRsp':
          return ProjectCreateRsp.fromJson(value);
        case 'ProjectCreateRspAllOf':
          return ProjectCreateRspAllOf.fromJson(value);
        case 'ProjectDeleteReq':
          return ProjectDeleteReq.fromJson(value);
        case 'ProjectDeveloperInfoCreateReq':
          return ProjectDeveloperInfoCreateReq.fromJson(value);
        case 'ProjectDeveloperInfoGetRsp':
          return ProjectDeveloperInfoGetRsp.fromJson(value);
        case 'ProjectDeveloperInfoGetRspAllOf':
          return ProjectDeveloperInfoGetRspAllOf.fromJson(value);
        case 'ProjectInvite':
          return ProjectInvite.fromJson(value);
        case 'ProjectInviteAcceptReq':
          return ProjectInviteAcceptReq.fromJson(value);
        case 'ProjectInviteAcceptRsp':
          return ProjectInviteAcceptRsp.fromJson(value);
        case 'ProjectInviteAcceptRspAllOf':
          return ProjectInviteAcceptRspAllOf.fromJson(value);
        case 'ProjectInviteDeleteReq':
          return ProjectInviteDeleteReq.fromJson(value);
        case 'ProjectInviteListRsp':
          return ProjectInviteListRsp.fromJson(value);
        case 'ProjectInviteListRspAllOf':
          return ProjectInviteListRspAllOf.fromJson(value);
        case 'ProjectInviteListRspAllOfData':
          return ProjectInviteListRspAllOfData.fromJson(value);
        case 'ProjectInviteReq':
          return ProjectInviteReq.fromJson(value);
        case 'ProjectInviteResendReq':
          return ProjectInviteResendReq.fromJson(value);
        case 'ProjectInviteRsp':
          return ProjectInviteRsp.fromJson(value);
        case 'ProjectInviteRspAllOf':
          return ProjectInviteRspAllOf.fromJson(value);
        case 'ProjectInviteRspAllOfData':
          return ProjectInviteRspAllOfData.fromJson(value);
        case 'ProjectListRsp':
          return ProjectListRsp.fromJson(value);
        case 'ProjectListRspAllOf':
          return ProjectListRspAllOf.fromJson(value);
        case 'ProjectListRspAllOfData':
          return ProjectListRspAllOfData.fromJson(value);
        case 'ProjectPermission':
          return ProjectPermission.fromJson(value);
        case 'ProjectPermissionListRsp':
          return ProjectPermissionListRsp.fromJson(value);
        case 'ProjectPermissionListRspAllOf':
          return ProjectPermissionListRspAllOf.fromJson(value);
        case 'ProjectPermissionListRspAllOfData':
          return ProjectPermissionListRspAllOfData.fromJson(value);
        case 'ProjectUpdateReq':
          return ProjectUpdateReq.fromJson(value);
        case 'ProjectUpdateRsp':
          return ProjectUpdateRsp.fromJson(value);
        case 'RequestData':
          return RequestData.fromJson(value);
        case 'UserUpdateReq':
          return UserUpdateReq.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
