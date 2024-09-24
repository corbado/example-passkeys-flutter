//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SMSTemplatesApi {
  SMSTemplatesApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new SMS template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SmsTemplateCreateReq] smsTemplateCreateReq (required):
  Future<Response> smsTemplateCreateWithHttpInfo(
    SmsTemplateCreateReq smsTemplateCreateReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/smsTemplates';

    // ignore: prefer_final_locals
    Object? postBody = smsTemplateCreateReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a new SMS template
  ///
  /// Parameters:
  ///
  /// * [SmsTemplateCreateReq] smsTemplateCreateReq (required):
  Future<SmsTemplateCreateRsp?> smsTemplateCreate(
    SmsTemplateCreateReq smsTemplateCreateReq,
  ) async {
    final response = await smsTemplateCreateWithHttpInfo(
      smsTemplateCreateReq,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SmsTemplateCreateRsp',
      ) as SmsTemplateCreateRsp;
    }
    return null;
  }

  /// Deletes an SMS template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] smsTemplateID (required):
  ///   ID of SMS template
  ///
  /// * [SmsTemplateDeleteReq] smsTemplateDeleteReq (required):
  Future<Response> smsTemplateDeleteWithHttpInfo(
    String smsTemplateID,
    SmsTemplateDeleteReq smsTemplateDeleteReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/smsTemplates/{smsTemplateID}'
        .replaceAll('{smsTemplateID}', smsTemplateID);

    // ignore: prefer_final_locals
    Object? postBody = smsTemplateDeleteReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes an SMS template
  ///
  /// Parameters:
  ///
  /// * [String] smsTemplateID (required):
  ///   ID of SMS template
  ///
  /// * [SmsTemplateDeleteReq] smsTemplateDeleteReq (required):
  Future<GenericRsp?> smsTemplateDelete(
    String smsTemplateID,
    SmsTemplateDeleteReq smsTemplateDeleteReq,
  ) async {
    final response = await smsTemplateDeleteWithHttpInfo(
      smsTemplateID,
      smsTemplateDeleteReq,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'GenericRsp',
      ) as GenericRsp;
    }
    return null;
  }
}
