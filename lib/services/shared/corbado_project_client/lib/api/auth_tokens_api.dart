//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthTokensApi {
  AuthTokensApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Validates auth token and returns attached user data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthTokenValidateReq] authTokenValidateReq (required):
  Future<Response> authTokenValidateWithHttpInfo(
    AuthTokenValidateReq authTokenValidateReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/authTokens/validate';

    // ignore: prefer_final_locals
    Object? postBody = authTokenValidateReq;

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

  /// Validates auth token and returns attached user data
  ///
  /// Parameters:
  ///
  /// * [AuthTokenValidateReq] authTokenValidateReq (required):
  Future<AuthTokenValidateRsp?> authTokenValidate(
    AuthTokenValidateReq authTokenValidateReq,
  ) async {
    final response = await authTokenValidateWithHttpInfo(
      authTokenValidateReq,
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
        'AuthTokenValidateRsp',
      ) as AuthTokenValidateRsp;
    }
    return null;
  }

  /// Creates a new session token for provided user data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SessionTokenCreateReq] sessionTokenCreateReq (required):
  Future<Response> sessionTokenCreateWithHttpInfo(
    SessionTokenCreateReq sessionTokenCreateReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessions';

    // ignore: prefer_final_locals
    Object? postBody = sessionTokenCreateReq;

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

  /// Creates a new session token for provided user data
  ///
  /// Parameters:
  ///
  /// * [SessionTokenCreateReq] sessionTokenCreateReq (required):
  Future<SessionTokenCreateRsp?> sessionTokenCreate(
    SessionTokenCreateReq sessionTokenCreateReq,
  ) async {
    final response = await sessionTokenCreateWithHttpInfo(
      sessionTokenCreateReq,
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
        'SessionTokenCreateRsp',
      ) as SessionTokenCreateRsp;
    }
    return null;
  }

  /// Verifies session token and returns attached user data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SessionTokenVerifyReq] sessionTokenVerifyReq (required):
  Future<Response> sessionTokenVerifyWithHttpInfo(
    SessionTokenVerifyReq sessionTokenVerifyReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessions/verify';

    // ignore: prefer_final_locals
    Object? postBody = sessionTokenVerifyReq;

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

  /// Verifies session token and returns attached user data
  ///
  /// Parameters:
  ///
  /// * [SessionTokenVerifyReq] sessionTokenVerifyReq (required):
  Future<SessionTokenVerifyRsp?> sessionTokenVerify(
    SessionTokenVerifyReq sessionTokenVerifyReq,
  ) async {
    final response = await sessionTokenVerifyWithHttpInfo(
      sessionTokenVerifyReq,
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
        'SessionTokenVerifyRsp',
      ) as SessionTokenVerifyRsp;
    }
    return null;
  }
}
