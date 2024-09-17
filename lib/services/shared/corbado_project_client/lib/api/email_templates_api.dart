//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailTemplatesApi {
  EmailTemplatesApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new email template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailTemplateCreateReq] emailTemplateCreateReq (required):
  Future<Response> emailTemplateCreateWithHttpInfo(
    EmailTemplateCreateReq emailTemplateCreateReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailTemplates';

    // ignore: prefer_final_locals
    Object? postBody = emailTemplateCreateReq;

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

  /// Creates a new email template
  ///
  /// Parameters:
  ///
  /// * [EmailTemplateCreateReq] emailTemplateCreateReq (required):
  Future<EmailTemplateCreateRsp?> emailTemplateCreate(
    EmailTemplateCreateReq emailTemplateCreateReq,
  ) async {
    final response = await emailTemplateCreateWithHttpInfo(
      emailTemplateCreateReq,
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
        'EmailTemplateCreateRsp',
      ) as EmailTemplateCreateRsp;
    }
    return null;
  }

  /// Deletes an email template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailTemplateID (required):
  ///   ID of email template
  ///
  /// * [EmailTemplateDeleteReq] emailTemplateDeleteReq (required):
  Future<Response> emailTemplateDeleteWithHttpInfo(
    String emailTemplateID,
    EmailTemplateDeleteReq emailTemplateDeleteReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailTemplates/{emailTemplateID}'
        .replaceAll('{emailTemplateID}', emailTemplateID);

    // ignore: prefer_final_locals
    Object? postBody = emailTemplateDeleteReq;

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

  /// Deletes an email template
  ///
  /// Parameters:
  ///
  /// * [String] emailTemplateID (required):
  ///   ID of email template
  ///
  /// * [EmailTemplateDeleteReq] emailTemplateDeleteReq (required):
  Future<GenericRsp?> emailTemplateDelete(
    String emailTemplateID,
    EmailTemplateDeleteReq emailTemplateDeleteReq,
  ) async {
    final response = await emailTemplateDeleteWithHttpInfo(
      emailTemplateID,
      emailTemplateDeleteReq,
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
