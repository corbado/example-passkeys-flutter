//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthMethodsApi {
  AuthMethodsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieves possible authentication methods for provided username
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthMethodsListReq] authMethodsListReq (required):
  Future<Response> authMethodsListWithHttpInfo(AuthMethodsListReq authMethodsListReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/authMethods';

    // ignore: prefer_final_locals
    Object? postBody = authMethodsListReq;

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

  /// Retrieves possible authentication methods for provided username
  ///
  /// Parameters:
  ///
  /// * [AuthMethodsListReq] authMethodsListReq (required):
  Future<AuthMethodsListRsp?> authMethodsList(AuthMethodsListReq authMethodsListReq,) async {
    final response = await authMethodsListWithHttpInfo(authMethodsListReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthMethodsListRsp',) as AuthMethodsListRsp;
    
    }
    return null;
  }
}
