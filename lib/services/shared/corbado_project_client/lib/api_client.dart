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
  ApiClient({this.basePath = 'https://backendapi.corbado.io', this.authentication,});

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
        case 'AndroidAppConfigDeleteReq':
          return AndroidAppConfigDeleteReq.fromJson(value);
        case 'AndroidAppConfigItem':
          return AndroidAppConfigItem.fromJson(value);
        case 'AndroidAppConfigListRsp':
          return AndroidAppConfigListRsp.fromJson(value);
        case 'AndroidAppConfigListRspAllOf':
          return AndroidAppConfigListRspAllOf.fromJson(value);
        case 'AndroidAppConfigSaveReq':
          return AndroidAppConfigSaveReq.fromJson(value);
        case 'AndroidAppConfigSaveRsp':
          return AndroidAppConfigSaveRsp.fromJson(value);
        case 'AndroidAppConfigUpdateReq':
          return AndroidAppConfigUpdateReq.fromJson(value);
        case 'AndroidAppConfigUpdateRsp':
          return AndroidAppConfigUpdateRsp.fromJson(value);
        case 'AssociationTokenCreateReq':
          return AssociationTokenCreateReq.fromJson(value);
        case 'AssociationTokenCreateRsp':
          return AssociationTokenCreateRsp.fromJson(value);
        case 'AssociationTokenCreateRspAllOf':
          return AssociationTokenCreateRspAllOf.fromJson(value);
        case 'AssociationTokenCreateRspAllOfData':
          return AssociationTokenCreateRspAllOfData.fromJson(value);
        case 'AuthMethod':
          return AuthMethodTypeTransformer().decode(value);
        case 'AuthMethodsListReq':
          return AuthMethodsListReq.fromJson(value);
        case 'AuthMethodsListRsp':
          return AuthMethodsListRsp.fromJson(value);
        case 'AuthMethodsListRspAllOf':
          return AuthMethodsListRspAllOf.fromJson(value);
        case 'AuthMethodsListRspAllOfData':
          return AuthMethodsListRspAllOfData.fromJson(value);
        case 'AuthTokenValidateReq':
          return AuthTokenValidateReq.fromJson(value);
        case 'AuthTokenValidateRsp':
          return AuthTokenValidateRsp.fromJson(value);
        case 'ClientInfo':
          return ClientInfo.fromJson(value);
        case 'CustomLoginIdentifier':
          return CustomLoginIdentifier.fromJson(value);
        case 'Email':
          return Email.fromJson(value);
        case 'EmailCode':
          return EmailCode.fromJson(value);
        case 'EmailCodeGetRsp':
          return EmailCodeGetRsp.fromJson(value);
        case 'EmailCodeGetRspAllOf':
          return EmailCodeGetRspAllOf.fromJson(value);
        case 'EmailCodeGetRspAllOfData':
          return EmailCodeGetRspAllOfData.fromJson(value);
        case 'EmailCodeSendReq':
          return EmailCodeSendReq.fromJson(value);
        case 'EmailCodeSendRsp':
          return EmailCodeSendRsp.fromJson(value);
        case 'EmailCodeSendRspAllOf':
          return EmailCodeSendRspAllOf.fromJson(value);
        case 'EmailCodeSendRspAllOfData':
          return EmailCodeSendRspAllOfData.fromJson(value);
        case 'EmailCodeValidateReq':
          return EmailCodeValidateReq.fromJson(value);
        case 'EmailCodeValidateRsp':
          return EmailCodeValidateRsp.fromJson(value);
        case 'EmailLink':
          return EmailLink.fromJson(value);
        case 'EmailLinkGetRsp':
          return EmailLinkGetRsp.fromJson(value);
        case 'EmailLinkGetRspAllOf':
          return EmailLinkGetRspAllOf.fromJson(value);
        case 'EmailLinkGetRspAllOfData':
          return EmailLinkGetRspAllOfData.fromJson(value);
        case 'EmailLinkSendReq':
          return EmailLinkSendReq.fromJson(value);
        case 'EmailLinkSendRsp':
          return EmailLinkSendRsp.fromJson(value);
        case 'EmailLinkSendRspAllOf':
          return EmailLinkSendRspAllOf.fromJson(value);
        case 'EmailLinkSendRspAllOfData':
          return EmailLinkSendRspAllOfData.fromJson(value);
        case 'EmailLinkValidateRsp':
          return EmailLinkValidateRsp.fromJson(value);
        case 'EmailLinkValidateRspAllOf':
          return EmailLinkValidateRspAllOf.fromJson(value);
        case 'EmailLinksDeleteReq':
          return EmailLinksDeleteReq.fromJson(value);
        case 'EmailLinksValidateReq':
          return EmailLinksValidateReq.fromJson(value);
        case 'EmailTemplateCreateReq':
          return EmailTemplateCreateReq.fromJson(value);
        case 'EmailTemplateCreateRsp':
          return EmailTemplateCreateRsp.fromJson(value);
        case 'EmailTemplateCreateRspAllOf':
          return EmailTemplateCreateRspAllOf.fromJson(value);
        case 'EmailTemplateCreateRspAllOfData':
          return EmailTemplateCreateRspAllOfData.fromJson(value);
        case 'EmailTemplateDeleteReq':
          return EmailTemplateDeleteReq.fromJson(value);
        case 'EmailValidationResult':
          return EmailValidationResult.fromJson(value);
        case 'EmptyReq':
          return EmptyReq.fromJson(value);
        case 'ErrorRsp':
          return ErrorRsp.fromJson(value);
        case 'ErrorRspAllOf':
          return ErrorRspAllOf.fromJson(value);
        case 'ErrorRspAllOfError':
          return ErrorRspAllOfError.fromJson(value);
        case 'ErrorRspAllOfErrorValidation':
          return ErrorRspAllOfErrorValidation.fromJson(value);
        case 'ExampleGetRsp':
          return ExampleGetRsp.fromJson(value);
        case 'ExampleGetRspAllOf':
          return ExampleGetRspAllOf.fromJson(value);
        case 'FullUser':
          return FullUser.fromJson(value);
        case 'GenericRsp':
          return GenericRsp.fromJson(value);
        case 'IOSAppConfigDeleteReq':
          return IOSAppConfigDeleteReq.fromJson(value);
        case 'IOSAppConfigItem':
          return IOSAppConfigItem.fromJson(value);
        case 'IOSAppConfigListRsp':
          return IOSAppConfigListRsp.fromJson(value);
        case 'IOSAppConfigListRspAllOf':
          return IOSAppConfigListRspAllOf.fromJson(value);
        case 'IOSAppConfigSaveReq':
          return IOSAppConfigSaveReq.fromJson(value);
        case 'IOSAppConfigSaveRsp':
          return IOSAppConfigSaveRsp.fromJson(value);
        case 'IOSAppConfigUpdateReq':
          return IOSAppConfigUpdateReq.fromJson(value);
        case 'IOSAppConfigUpdateRsp':
          return IOSAppConfigUpdateRsp.fromJson(value);
        case 'LoginIdentifierType':
          return LoginIdentifierTypeTypeTransformer().decode(value);
        case 'LongSession':
          return LongSession.fromJson(value);
        case 'LongSessionGetRsp':
          return LongSessionGetRsp.fromJson(value);
        case 'LongSessionGetRspAllOf':
          return LongSessionGetRspAllOf.fromJson(value);
        case 'LongSessionGetRspAllOfData':
          return LongSessionGetRspAllOfData.fromJson(value);
        case 'LongSessionListRsp':
          return LongSessionListRsp.fromJson(value);
        case 'LongSessionListRspAllOf':
          return LongSessionListRspAllOf.fromJson(value);
        case 'LongSessionListRspAllOfData':
          return LongSessionListRspAllOfData.fromJson(value);
        case 'LongSessionRevokeReq':
          return LongSessionRevokeReq.fromJson(value);
        case 'OriginAllowedReq':
          return OriginAllowedReq.fromJson(value);
        case 'OriginAllowedRsp':
          return OriginAllowedRsp.fromJson(value);
        case 'OriginAllowedRspAllOf':
          return OriginAllowedRspAllOf.fromJson(value);
        case 'Paging':
          return Paging.fromJson(value);
        case 'PhoneNumber':
          return PhoneNumber.fromJson(value);
        case 'PhoneNumberValidationResult':
          return PhoneNumberValidationResult.fromJson(value);
        case 'ProjectConfig':
          return ProjectConfig.fromJson(value);
        case 'ProjectConfigGetRsp':
          return ProjectConfigGetRsp.fromJson(value);
        case 'ProjectConfigGetRspAllOf':
          return ProjectConfigGetRspAllOf.fromJson(value);
        case 'ProjectConfigSaveReq':
          return ProjectConfigSaveReq.fromJson(value);
        case 'ProjectConfigWebhookTestReq':
          return ProjectConfigWebhookTestReq.fromJson(value);
        case 'ProjectConfigWebhookTestRsp':
          return ProjectConfigWebhookTestRsp.fromJson(value);
        case 'ProjectConfigWebhookTestRspAllOf':
          return ProjectConfigWebhookTestRspAllOf.fromJson(value);
        case 'ProjectConfigWebhookTestRspAllOfData':
          return ProjectConfigWebhookTestRspAllOfData.fromJson(value);
        case 'ProjectSecretCreateReq':
          return ProjectSecretCreateReq.fromJson(value);
        case 'ProjectSecretCreateRsp':
          return ProjectSecretCreateRsp.fromJson(value);
        case 'ProjectSecretDeleteReq':
          return ProjectSecretDeleteReq.fromJson(value);
        case 'ProjectSecretItem':
          return ProjectSecretItem.fromJson(value);
        case 'ProjectSecretListRsp':
          return ProjectSecretListRsp.fromJson(value);
        case 'ProjectSecretListRspAllOf':
          return ProjectSecretListRspAllOf.fromJson(value);
        case 'RequestData':
          return RequestData.fromJson(value);
        case 'RequestLog':
          return RequestLog.fromJson(value);
        case 'RequestLogGetRsp':
          return RequestLogGetRsp.fromJson(value);
        case 'RequestLogGetRspAllOf':
          return RequestLogGetRspAllOf.fromJson(value);
        case 'RequestLogsListRsp':
          return RequestLogsListRsp.fromJson(value);
        case 'RequestLogsListRspAllOf':
          return RequestLogsListRspAllOf.fromJson(value);
        case 'RequestLogsListRspAllOfData':
          return RequestLogsListRspAllOfData.fromJson(value);
        case 'SessionConfig':
          return SessionConfig.fromJson(value);
        case 'SessionConfigGetRsp':
          return SessionConfigGetRsp.fromJson(value);
        case 'SessionConfigGetRspAllOf':
          return SessionConfigGetRspAllOf.fromJson(value);
        case 'SessionConfigUpdateReq':
          return SessionConfigUpdateReq.fromJson(value);
        case 'SessionTokenCreateReq':
          return SessionTokenCreateReq.fromJson(value);
        case 'SessionTokenCreateRsp':
          return SessionTokenCreateRsp.fromJson(value);
        case 'SessionTokenCreateRspAllOf':
          return SessionTokenCreateRspAllOf.fromJson(value);
        case 'SessionTokenCreateRspAllOfData':
          return SessionTokenCreateRspAllOfData.fromJson(value);
        case 'SessionTokenVerifyReq':
          return SessionTokenVerifyReq.fromJson(value);
        case 'SessionTokenVerifyRsp':
          return SessionTokenVerifyRsp.fromJson(value);
        case 'SessionTokenVerifyRspAllOf':
          return SessionTokenVerifyRspAllOf.fromJson(value);
        case 'SessionTokenVerifyRspAllOfData':
          return SessionTokenVerifyRspAllOfData.fromJson(value);
        case 'SmsCodeSendReq':
          return SmsCodeSendReq.fromJson(value);
        case 'SmsCodeSendRsp':
          return SmsCodeSendRsp.fromJson(value);
        case 'SmsCodeSendRspAllOf':
          return SmsCodeSendRspAllOf.fromJson(value);
        case 'SmsCodeSendRspAllOfData':
          return SmsCodeSendRspAllOfData.fromJson(value);
        case 'SmsCodeValidateReq':
          return SmsCodeValidateReq.fromJson(value);
        case 'SmsCodeValidateRsp':
          return SmsCodeValidateRsp.fromJson(value);
        case 'SmsCodeValidateRspAllOf':
          return SmsCodeValidateRspAllOf.fromJson(value);
        case 'SmsTemplateCreateReq':
          return SmsTemplateCreateReq.fromJson(value);
        case 'SmsTemplateCreateRsp':
          return SmsTemplateCreateRsp.fromJson(value);
        case 'SmsTemplateCreateRspAllOf':
          return SmsTemplateCreateRspAllOf.fromJson(value);
        case 'SmsTemplateCreateRspAllOfData':
          return SmsTemplateCreateRspAllOfData.fromJson(value);
        case 'SmsTemplateDeleteReq':
          return SmsTemplateDeleteReq.fromJson(value);
        case 'Status':
          return StatusTypeTransformer().decode(value);
        case 'TrackingBackupState':
          return TrackingBackupState.fromJson(value);
        case 'TrackingBackupStateGetRsp':
          return TrackingBackupStateGetRsp.fromJson(value);
        case 'TrackingBackupStateGetRspAllOf':
          return TrackingBackupStateGetRspAllOf.fromJson(value);
        case 'TrackingBrowserDetailedStats':
          return TrackingBrowserDetailedStats.fromJson(value);
        case 'TrackingBrowserDetailedStatsListRsp':
          return TrackingBrowserDetailedStatsListRsp.fromJson(value);
        case 'TrackingBrowserDetailedStatsListRspAllOf':
          return TrackingBrowserDetailedStatsListRspAllOf.fromJson(value);
        case 'TrackingBrowserDetailedStatsListRspAllOfData':
          return TrackingBrowserDetailedStatsListRspAllOfData.fromJson(value);
        case 'TrackingBrowserStats':
          return TrackingBrowserStats.fromJson(value);
        case 'TrackingBrowserStatsListRsp':
          return TrackingBrowserStatsListRsp.fromJson(value);
        case 'TrackingBrowserStatsListRspAllOf':
          return TrackingBrowserStatsListRspAllOf.fromJson(value);
        case 'TrackingBrowserStatsListRspAllOfData':
          return TrackingBrowserStatsListRspAllOfData.fromJson(value);
        case 'TrackingDetailedStats':
          return TrackingDetailedStats.fromJson(value);
        case 'TrackingDetailedStatsListRsp':
          return TrackingDetailedStatsListRsp.fromJson(value);
        case 'TrackingDetailedStatsListRspAllOf':
          return TrackingDetailedStatsListRspAllOf.fromJson(value);
        case 'TrackingDetailedStatsListRspAllOfData':
          return TrackingDetailedStatsListRspAllOfData.fromJson(value);
        case 'TrackingEnums':
          return TrackingEnums.fromJson(value);
        case 'TrackingEnumsGetRsp':
          return TrackingEnumsGetRsp.fromJson(value);
        case 'TrackingEnumsGetRspAllOf':
          return TrackingEnumsGetRspAllOf.fromJson(value);
        case 'TrackingOSDetailedStats':
          return TrackingOSDetailedStats.fromJson(value);
        case 'TrackingOSDetailedStatsListRsp':
          return TrackingOSDetailedStatsListRsp.fromJson(value);
        case 'TrackingOSDetailedStatsListRspAllOf':
          return TrackingOSDetailedStatsListRspAllOf.fromJson(value);
        case 'TrackingOSDetailedStatsListRspAllOfData':
          return TrackingOSDetailedStatsListRspAllOfData.fromJson(value);
        case 'TrackingOSStats':
          return TrackingOSStats.fromJson(value);
        case 'TrackingOSStatsListRsp':
          return TrackingOSStatsListRsp.fromJson(value);
        case 'TrackingOSStatsListRspAllOf':
          return TrackingOSStatsListRspAllOf.fromJson(value);
        case 'TrackingOSStatsListRspAllOfData':
          return TrackingOSStatsListRspAllOfData.fromJson(value);
        case 'TrackingRawListRow':
          return TrackingRawListRow.fromJson(value);
        case 'TrackingRawListRsp':
          return TrackingRawListRsp.fromJson(value);
        case 'TrackingRawListRspAllOf':
          return TrackingRawListRspAllOf.fromJson(value);
        case 'TrackingStats':
          return TrackingStats.fromJson(value);
        case 'TrackingStatsListRsp':
          return TrackingStatsListRsp.fromJson(value);
        case 'TrackingStatsListRspAllOf':
          return TrackingStatsListRspAllOf.fromJson(value);
        case 'TrackingStatsListRspAllOfData':
          return TrackingStatsListRspAllOfData.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserAuthLog':
          return UserAuthLog.fromJson(value);
        case 'UserAuthLogListRsp':
          return UserAuthLogListRsp.fromJson(value);
        case 'UserAuthLogListRspAllOf':
          return UserAuthLogListRspAllOf.fromJson(value);
        case 'UserAuthLogListRspAllOfData':
          return UserAuthLogListRspAllOfData.fromJson(value);
        case 'UserCreateReq':
          return UserCreateReq.fromJson(value);
        case 'UserCreateRsp':
          return UserCreateRsp.fromJson(value);
        case 'UserCreateRspAllOf':
          return UserCreateRspAllOf.fromJson(value);
        case 'UserCreateRspAllOfData':
          return UserCreateRspAllOfData.fromJson(value);
        case 'UserCustomLoginIdentifierCreateReq':
          return UserCustomLoginIdentifierCreateReq.fromJson(value);
        case 'UserCustomLoginIdentifierCreateRsp':
          return UserCustomLoginIdentifierCreateRsp.fromJson(value);
        case 'UserCustomLoginIdentifierCreateRspAllOf':
          return UserCustomLoginIdentifierCreateRspAllOf.fromJson(value);
        case 'UserCustomLoginIdentifierCreateRspAllOfData':
          return UserCustomLoginIdentifierCreateRspAllOfData.fromJson(value);
        case 'UserCustomLoginIdentifierDeleteReq':
          return UserCustomLoginIdentifierDeleteReq.fromJson(value);
        case 'UserCustomLoginIdentifierGetRsp':
          return UserCustomLoginIdentifierGetRsp.fromJson(value);
        case 'UserCustomLoginIdentifierGetRspAllOf':
          return UserCustomLoginIdentifierGetRspAllOf.fromJson(value);
        case 'UserCustomLoginIdentifierGetRspAllOfData':
          return UserCustomLoginIdentifierGetRspAllOfData.fromJson(value);
        case 'UserDeleteReq':
          return UserDeleteReq.fromJson(value);
        case 'UserDevice':
          return UserDevice.fromJson(value);
        case 'UserDeviceListRsp':
          return UserDeviceListRsp.fromJson(value);
        case 'UserDeviceListRspAllOf':
          return UserDeviceListRspAllOf.fromJson(value);
        case 'UserEmail':
          return UserEmail.fromJson(value);
        case 'UserEmailCreateReq':
          return UserEmailCreateReq.fromJson(value);
        case 'UserEmailCreateRsp':
          return UserEmailCreateRsp.fromJson(value);
        case 'UserEmailCreateRspAllOf':
          return UserEmailCreateRspAllOf.fromJson(value);
        case 'UserEmailCreateRspAllOfData':
          return UserEmailCreateRspAllOfData.fromJson(value);
        case 'UserEmailDeleteReq':
          return UserEmailDeleteReq.fromJson(value);
        case 'UserEmailGetRsp':
          return UserEmailGetRsp.fromJson(value);
        case 'UserEmailGetRspAllOf':
          return UserEmailGetRspAllOf.fromJson(value);
        case 'UserEmailGetRspAllOfData':
          return UserEmailGetRspAllOfData.fromJson(value);
        case 'UserGetRsp':
          return UserGetRsp.fromJson(value);
        case 'UserGetRspAllOf':
          return UserGetRspAllOf.fromJson(value);
        case 'UserListRsp':
          return UserListRsp.fromJson(value);
        case 'UserListRspAllOf':
          return UserListRspAllOf.fromJson(value);
        case 'UserListRspAllOfData':
          return UserListRspAllOfData.fromJson(value);
        case 'UserPhoneNumber':
          return UserPhoneNumber.fromJson(value);
        case 'UserPhoneNumberCreateReq':
          return UserPhoneNumberCreateReq.fromJson(value);
        case 'UserPhoneNumberCreateRsp':
          return UserPhoneNumberCreateRsp.fromJson(value);
        case 'UserPhoneNumberCreateRspAllOf':
          return UserPhoneNumberCreateRspAllOf.fromJson(value);
        case 'UserPhoneNumberCreateRspAllOfData':
          return UserPhoneNumberCreateRspAllOfData.fromJson(value);
        case 'UserPhoneNumberDeleteReq':
          return UserPhoneNumberDeleteReq.fromJson(value);
        case 'UserPhoneNumberGetRsp':
          return UserPhoneNumberGetRsp.fromJson(value);
        case 'UserPhoneNumberGetRspAllOf':
          return UserPhoneNumberGetRspAllOf.fromJson(value);
        case 'UserPhoneNumberGetRspAllOfData':
          return UserPhoneNumberGetRspAllOfData.fromJson(value);
        case 'UserStats':
          return UserStats.fromJson(value);
        case 'UserStatsListRsp':
          return UserStatsListRsp.fromJson(value);
        case 'UserStatsListRspAllOf':
          return UserStatsListRspAllOf.fromJson(value);
        case 'UserStatsListRspAllOfData':
          return UserStatsListRspAllOfData.fromJson(value);
        case 'UserUpdateReq':
          return UserUpdateReq.fromJson(value);
        case 'UserUpdateRsp':
          return UserUpdateRsp.fromJson(value);
        case 'UserUpdateRspAllOf':
          return UserUpdateRspAllOf.fromJson(value);
        case 'ValidateEmailReq':
          return ValidateEmailReq.fromJson(value);
        case 'ValidateEmailRsp':
          return ValidateEmailRsp.fromJson(value);
        case 'ValidateEmailRspAllOf':
          return ValidateEmailRspAllOf.fromJson(value);
        case 'ValidatePhoneNumberReq':
          return ValidatePhoneNumberReq.fromJson(value);
        case 'ValidatePhoneNumberRsp':
          return ValidatePhoneNumberRsp.fromJson(value);
        case 'ValidatePhoneNumberRspAllOf':
          return ValidatePhoneNumberRspAllOf.fromJson(value);
        case 'ValidationEmail':
          return ValidationEmail.fromJson(value);
        case 'ValidationPhoneNumber':
          return ValidationPhoneNumber.fromJson(value);
        case 'WebAuthnAssociateStartReq':
          return WebAuthnAssociateStartReq.fromJson(value);
        case 'WebAuthnAssociateStartRsp':
          return WebAuthnAssociateStartRsp.fromJson(value);
        case 'WebAuthnAuthenticateFinishRsp':
          return WebAuthnAuthenticateFinishRsp.fromJson(value);
        case 'WebAuthnAuthenticateFinishRspAllOf':
          return WebAuthnAuthenticateFinishRspAllOf.fromJson(value);
        case 'WebAuthnAuthenticateStartReq':
          return WebAuthnAuthenticateStartReq.fromJson(value);
        case 'WebAuthnAuthenticateStartRsp':
          return WebAuthnAuthenticateStartRsp.fromJson(value);
        case 'WebAuthnAuthenticateStartRspAllOf':
          return WebAuthnAuthenticateStartRspAllOf.fromJson(value);
        case 'WebAuthnAuthenticateSuccess':
          return WebAuthnAuthenticateSuccess.fromJson(value);
        case 'WebAuthnAuthenticateSuccessAllOf':
          return WebAuthnAuthenticateSuccessAllOf.fromJson(value);
        case 'WebAuthnAuthenticatorUpdateReq':
          return WebAuthnAuthenticatorUpdateReq.fromJson(value);
        case 'WebAuthnCredentialExistsReq':
          return WebAuthnCredentialExistsReq.fromJson(value);
        case 'WebAuthnCredentialExistsRsp':
          return WebAuthnCredentialExistsRsp.fromJson(value);
        case 'WebAuthnCredentialExistsRspAllOf':
          return WebAuthnCredentialExistsRspAllOf.fromJson(value);
        case 'WebAuthnCredentialReq':
          return WebAuthnCredentialReq.fromJson(value);
        case 'WebAuthnCredentialRsp':
          return WebAuthnCredentialRsp.fromJson(value);
        case 'WebAuthnCredentialRspAllOf':
          return WebAuthnCredentialRspAllOf.fromJson(value);
        case 'WebAuthnFinishReq':
          return WebAuthnFinishReq.fromJson(value);
        case 'WebAuthnMediationStartReq':
          return WebAuthnMediationStartReq.fromJson(value);
        case 'WebAuthnMediationStartRsp':
          return WebAuthnMediationStartRsp.fromJson(value);
        case 'WebAuthnMediationStartRspAllOf':
          return WebAuthnMediationStartRspAllOf.fromJson(value);
        case 'WebAuthnRegisterFinishRsp':
          return WebAuthnRegisterFinishRsp.fromJson(value);
        case 'WebAuthnRegisterFinishRspAllOf':
          return WebAuthnRegisterFinishRspAllOf.fromJson(value);
        case 'WebAuthnRegisterStartReq':
          return WebAuthnRegisterStartReq.fromJson(value);
        case 'WebAuthnRegisterStartRsp':
          return WebAuthnRegisterStartRsp.fromJson(value);
        case 'WebAuthnRegisterStartRspAllOf':
          return WebAuthnRegisterStartRspAllOf.fromJson(value);
        case 'WebauthnSettingCreate':
          return WebauthnSettingCreate.fromJson(value);
        case 'WebauthnSettingCreateReq':
          return WebauthnSettingCreateReq.fromJson(value);
        case 'WebauthnSettingCreateReqAllOf':
          return WebauthnSettingCreateReqAllOf.fromJson(value);
        case 'WebauthnSettingCreateRsp':
          return WebauthnSettingCreateRsp.fromJson(value);
        case 'WebauthnSettingDeleteReq':
          return WebauthnSettingDeleteReq.fromJson(value);
        case 'WebauthnSettingGetRsp':
          return WebauthnSettingGetRsp.fromJson(value);
        case 'WebauthnSettingItem':
          return WebauthnSettingItem.fromJson(value);
        case 'WebauthnSettingItemAllOf':
          return WebauthnSettingItemAllOf.fromJson(value);
        case 'WebauthnSettingListRsp':
          return WebauthnSettingListRsp.fromJson(value);
        case 'WebauthnSettingListRspAllOf':
          return WebauthnSettingListRspAllOf.fromJson(value);
        case 'WebauthnSettingUpdateReq':
          return WebauthnSettingUpdateReq.fromJson(value);
        case 'WebauthnSettingUpdateRsp':
          return WebauthnSettingUpdateRsp.fromJson(value);
        case 'WebhookLog':
          return WebhookLog.fromJson(value);
        case 'WebhookLogsListRsp':
          return WebhookLogsListRsp.fromJson(value);
        case 'WebhookLogsListRspAllOf':
          return WebhookLogsListRspAllOf.fromJson(value);
        case 'WebhookLogsListRspAllOfData':
          return WebhookLogsListRspAllOfData.fromJson(value);
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
