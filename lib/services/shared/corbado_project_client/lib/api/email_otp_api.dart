//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailOTPApi {
  EmailOTPApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get an email OTP only one time after confirmed
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailCodeID (required):
  ///   ID of email OTP
  Future<Response> emailCodeGetWithHttpInfo(String emailCodeID,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailCodes/{emailCodeID}'
      .replaceAll('{emailCodeID}', emailCodeID);

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

  /// Get an email OTP only one time after confirmed
  ///
  /// Parameters:
  ///
  /// * [String] emailCodeID (required):
  ///   ID of email OTP
  Future<EmailCodeGetRsp?> emailCodeGet(String emailCodeID,) async {
    final response = await emailCodeGetWithHttpInfo(emailCodeID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailCodeGetRsp',) as EmailCodeGetRsp;
    
    }
    return null;
  }

  /// Creates email code and sends it to given email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailCodeSendReq] emailCodeSendReq (required):
  Future<Response> emailCodeSendWithHttpInfo(EmailCodeSendReq emailCodeSendReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailCodes';

    // ignore: prefer_final_locals
    Object? postBody = emailCodeSendReq;

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

  /// Creates email code and sends it to given email address
  ///
  /// Parameters:
  ///
  /// * [EmailCodeSendReq] emailCodeSendReq (required):
  Future<EmailCodeSendRsp?> emailCodeSend(EmailCodeSendReq emailCodeSendReq,) async {
    final response = await emailCodeSendWithHttpInfo(emailCodeSendReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailCodeSendRsp',) as EmailCodeSendRsp;
    
    }
    return null;
  }

  /// Validates email code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailCodeID (required):
  ///   ID of email OTP
  ///
  /// * [EmailCodeValidateReq] emailCodeValidateReq (required):
  Future<Response> emailCodeValidateWithHttpInfo(String emailCodeID, EmailCodeValidateReq emailCodeValidateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/emailCodes/{emailCodeID}/validate'
      .replaceAll('{emailCodeID}', emailCodeID);

    // ignore: prefer_final_locals
    Object? postBody = emailCodeValidateReq;

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

  /// Validates email code
  ///
  /// Parameters:
  ///
  /// * [String] emailCodeID (required):
  ///   ID of email OTP
  ///
  /// * [EmailCodeValidateReq] emailCodeValidateReq (required):
  Future<EmailCodeValidateRsp?> emailCodeValidate(String emailCodeID, EmailCodeValidateReq emailCodeValidateReq,) async {
    final response = await emailCodeValidateWithHttpInfo(emailCodeID, emailCodeValidateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailCodeValidateRsp',) as EmailCodeValidateRsp;
    
    }
    return null;
  }
}
