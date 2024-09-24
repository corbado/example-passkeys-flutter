//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APISecretsApi {
  APISecretsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates an API secret
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectSecretCreateReq] projectSecretCreateReq:
  Future<Response> projectSecretCreateWithHttpInfo({
    ProjectSecretCreateReq? projectSecretCreateReq,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projectSecrets';

    // ignore: prefer_final_locals
    Object? postBody = projectSecretCreateReq;

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

  /// Creates an API secret
  ///
  /// Parameters:
  ///
  /// * [ProjectSecretCreateReq] projectSecretCreateReq:
  Future<ProjectSecretCreateRsp?> projectSecretCreate({
    ProjectSecretCreateReq? projectSecretCreateReq,
  }) async {
    final response = await projectSecretCreateWithHttpInfo(
      projectSecretCreateReq: projectSecretCreateReq,
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
        'ProjectSecretCreateRsp',
      ) as ProjectSecretCreateRsp;
    }
    return null;
  }

  /// Deletes API secret
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] secretID (required):
  ///   Secret ID from create
  ///
  /// * [ProjectSecretDeleteReq] projectSecretDeleteReq:
  Future<Response> projectSecretDeleteWithHttpInfo(
    String secretID, {
    ProjectSecretDeleteReq? projectSecretDeleteReq,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/v1/projectSecrets/{secretID}'.replaceAll('{secretID}', secretID);

    // ignore: prefer_final_locals
    Object? postBody = projectSecretDeleteReq;

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

  /// Deletes API secret
  ///
  /// Parameters:
  ///
  /// * [String] secretID (required):
  ///   Secret ID from create
  ///
  /// * [ProjectSecretDeleteReq] projectSecretDeleteReq:
  Future<GenericRsp?> projectSecretDelete(
    String secretID, {
    ProjectSecretDeleteReq? projectSecretDeleteReq,
  }) async {
    final response = await projectSecretDeleteWithHttpInfo(
      secretID,
      projectSecretDeleteReq: projectSecretDeleteReq,
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

  /// Lists API secrets
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> projectSecretListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projectSecrets';

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

  /// Lists API secrets
  Future<ProjectSecretListRsp?> projectSecretList() async {
    final response = await projectSecretListWithHttpInfo();
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
        'ProjectSecretListRsp',
      ) as ProjectSecretListRsp;
    }
    return null;
  }
}
