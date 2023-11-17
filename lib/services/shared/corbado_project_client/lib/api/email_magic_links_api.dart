//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailMagicLinksApi {
  EmailMagicLinksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes an email magic link
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailLinkID (required):
  ///   ID of email magic link
  ///
  /// * [EmailLinksDeleteReq] emailLinksDeleteReq:
  Future<Response> emailLinkDeleteWithHttpInfo(String emailLinkID, { EmailLinksDeleteReq? emailLinksDeleteReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailLinks/{emailLinkID}'
      .replaceAll('{emailLinkID}', emailLinkID);

    // ignore: prefer_final_locals
    Object? postBody = emailLinksDeleteReq;

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

  /// Deletes an email magic link
  ///
  /// Parameters:
  ///
  /// * [String] emailLinkID (required):
  ///   ID of email magic link
  ///
  /// * [EmailLinksDeleteReq] emailLinksDeleteReq:
  Future<EmailLinkValidateRsp?> emailLinkDelete(String emailLinkID, { EmailLinksDeleteReq? emailLinksDeleteReq, }) async {
    final response = await emailLinkDeleteWithHttpInfo(emailLinkID,  emailLinksDeleteReq: emailLinksDeleteReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailLinkValidateRsp',) as EmailLinkValidateRsp;
    
    }
    return null;
  }

  /// Get an email magic link only one time after confirmed
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailLinkID (required):
  ///   ID of email magic link
  Future<Response> emailLinkGetWithHttpInfo(String emailLinkID,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailLinks/{emailLinkID}'
      .replaceAll('{emailLinkID}', emailLinkID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get an email magic link only one time after confirmed
  ///
  /// Parameters:
  ///
  /// * [String] emailLinkID (required):
  ///   ID of email magic link
  Future<EmailLinkGetRsp?> emailLinkGet(String emailLinkID,) async {
    final response = await emailLinkGetWithHttpInfo(emailLinkID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailLinkGetRsp',) as EmailLinkGetRsp;
    
    }
    return null;
  }

  /// Creates email magic link and sends it to given email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailLinkSendReq] emailLinkSendReq (required):
  Future<Response> emailLinkSendWithHttpInfo(EmailLinkSendReq emailLinkSendReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailLinks';

    // ignore: prefer_final_locals
    Object? postBody = emailLinkSendReq;

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

  /// Creates email magic link and sends it to given email address
  ///
  /// Parameters:
  ///
  /// * [EmailLinkSendReq] emailLinkSendReq (required):
  Future<EmailLinkSendRsp?> emailLinkSend(EmailLinkSendReq emailLinkSendReq,) async {
    final response = await emailLinkSendWithHttpInfo(emailLinkSendReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailLinkSendRsp',) as EmailLinkSendRsp;
    
    }
    return null;
  }

  /// Validates email magic link token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailLinkID (required):
  ///   ID of email magic link
  ///
  /// * [EmailLinksValidateReq] emailLinksValidateReq (required):
  Future<Response> emailLinkValidateWithHttpInfo(String emailLinkID, EmailLinksValidateReq emailLinksValidateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailLinks/{emailLinkID}/validate'
      .replaceAll('{emailLinkID}', emailLinkID);

    // ignore: prefer_final_locals
    Object? postBody = emailLinksValidateReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Validates email magic link token
  ///
  /// Parameters:
  ///
  /// * [String] emailLinkID (required):
  ///   ID of email magic link
  ///
  /// * [EmailLinksValidateReq] emailLinksValidateReq (required):
  Future<EmailLinkValidateRsp?> emailLinkValidate(String emailLinkID, EmailLinksValidateReq emailLinksValidateReq,) async {
    final response = await emailLinkValidateWithHttpInfo(emailLinkID, emailLinksValidateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailLinkValidateRsp',) as EmailLinkValidateRsp;
    
    }
    return null;
  }
}
