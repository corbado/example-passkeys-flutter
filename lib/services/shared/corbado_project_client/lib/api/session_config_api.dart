//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SessionConfigApi {
  SessionConfigApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieves session config by projectID inferred from authentication
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> sessionConfigGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessionConfig';

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

  /// Retrieves session config by projectID inferred from authentication
  Future<SessionConfigGetRsp?> sessionConfigGet() async {
    final response = await sessionConfigGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionConfigGetRsp',) as SessionConfigGetRsp;
    
    }
    return null;
  }

  /// Updates session config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SessionConfigUpdateReq] sessionConfigUpdateReq (required):
  Future<Response> sessionConfigUpdateWithHttpInfo(SessionConfigUpdateReq sessionConfigUpdateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessionConfig';

    // ignore: prefer_final_locals
    Object? postBody = sessionConfigUpdateReq;

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

  /// Updates session config
  ///
  /// Parameters:
  ///
  /// * [SessionConfigUpdateReq] sessionConfigUpdateReq (required):
  Future<GenericRsp?> sessionConfigUpdate(SessionConfigUpdateReq sessionConfigUpdateReq,) async {
    final response = await sessionConfigUpdateWithHttpInfo(sessionConfigUpdateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenericRsp',) as GenericRsp;
    
    }
    return null;
  }
}
