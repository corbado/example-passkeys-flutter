//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete user
  ///
  /// Deletes the authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> v1UsersDeleteWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

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

  /// Delete user
  ///
  /// Deletes the authenticated user.
  Future<void> v1UsersDelete() async {
    final response = await v1UsersDeleteWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update username
  ///
  /// Updates username of the authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UsersPutRequest] v1UsersPutRequest (required):
  Future<Response> v1UsersPutWithHttpInfo(
    V1UsersPutRequest v1UsersPutRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users';

    // ignore: prefer_final_locals
    Object? postBody = v1UsersPutRequest;

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

  /// Update username
  ///
  /// Updates username of the authenticated user.
  ///
  /// Parameters:
  ///
  /// * [V1UsersPutRequest] v1UsersPutRequest (required):
  Future<void> v1UsersPut(
    V1UsersPutRequest v1UsersPutRequest,
  ) async {
    final response = await v1UsersPutWithHttpInfo(
      v1UsersPutRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
