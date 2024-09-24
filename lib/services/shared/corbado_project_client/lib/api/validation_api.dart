//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationApi {
  ValidationApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Indicates in the given origin is allowed to this project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OriginAllowedReq] originAllowedReq:
  Future<Response> originAllowedWithHttpInfo({
    OriginAllowedReq? originAllowedReq,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/origin/allowed';

    // ignore: prefer_final_locals
    Object? postBody = originAllowedReq;

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

  /// Indicates in the given origin is allowed to this project
  ///
  /// Parameters:
  ///
  /// * [OriginAllowedReq] originAllowedReq:
  Future<OriginAllowedRsp?> originAllowed({
    OriginAllowedReq? originAllowedReq,
  }) async {
    final response = await originAllowedWithHttpInfo(
      originAllowedReq: originAllowedReq,
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
        'OriginAllowedRsp',
      ) as OriginAllowedRsp;
    }
    return null;
  }

  /// Validates email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidateEmailReq] validateEmailReq (required):
  Future<Response> validateEmailWithHttpInfo(
    ValidateEmailReq validateEmailReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validate/email';

    // ignore: prefer_final_locals
    Object? postBody = validateEmailReq;

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

  /// Validates email
  ///
  /// Parameters:
  ///
  /// * [ValidateEmailReq] validateEmailReq (required):
  Future<ValidateEmailRsp?> validateEmail(
    ValidateEmailReq validateEmailReq,
  ) async {
    final response = await validateEmailWithHttpInfo(
      validateEmailReq,
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
        'ValidateEmailRsp',
      ) as ValidateEmailRsp;
    }
    return null;
  }

  /// Validates phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidatePhoneNumberReq] validatePhoneNumberReq (required):
  Future<Response> validatePhoneNumberWithHttpInfo(
    ValidatePhoneNumberReq validatePhoneNumberReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/validate/phoneNumber';

    // ignore: prefer_final_locals
    Object? postBody = validatePhoneNumberReq;

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

  /// Validates phone number
  ///
  /// Parameters:
  ///
  /// * [ValidatePhoneNumberReq] validatePhoneNumberReq (required):
  Future<ValidatePhoneNumberRsp?> validatePhoneNumber(
    ValidatePhoneNumberReq validatePhoneNumberReq,
  ) async {
    final response = await validatePhoneNumberWithHttpInfo(
      validatePhoneNumberReq,
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
        'ValidatePhoneNumberRsp',
      ) as ValidatePhoneNumberRsp;
    }
    return null;
  }
}
