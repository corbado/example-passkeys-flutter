//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssociationTokensApi {
  AssociationTokensApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new association token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AssociationTokenCreateReq] associationTokenCreateReq (required):
  Future<Response> associationTokenCreateWithHttpInfo(AssociationTokenCreateReq associationTokenCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/associationTokens';

    // ignore: prefer_final_locals
    Object? postBody = associationTokenCreateReq;

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

  /// Creates a new association token
  ///
  /// Parameters:
  ///
  /// * [AssociationTokenCreateReq] associationTokenCreateReq (required):
  Future<AssociationTokenCreateRsp?> associationTokenCreate(AssociationTokenCreateReq associationTokenCreateReq,) async {
    final response = await associationTokenCreateWithHttpInfo(associationTokenCreateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssociationTokenCreateRsp',) as AssociationTokenCreateRsp;
    
    }
    return null;
  }
}
