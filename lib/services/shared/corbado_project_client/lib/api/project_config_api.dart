//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectConfigApi {
  ProjectConfigApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Activates the project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmptyReq] emptyReq (required):
  Future<Response> projectActivateWithHttpInfo(
    EmptyReq emptyReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/activate';

    // ignore: prefer_final_locals
    Object? postBody = emptyReq;

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

  /// Activates the project
  ///
  /// Parameters:
  ///
  /// * [EmptyReq] emptyReq (required):
  Future<GenericRsp?> projectActivate(
    EmptyReq emptyReq,
  ) async {
    final response = await projectActivateWithHttpInfo(
      emptyReq,
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

  /// Retrieves project config by projectID inferred from authentication
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> projectConfigGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projectConfig';

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

  /// Retrieves project config by projectID inferred from authentication
  Future<ProjectConfigGetRsp?> projectConfigGet() async {
    final response = await projectConfigGetWithHttpInfo();
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
        'ProjectConfigGetRsp',
      ) as ProjectConfigGetRsp;
    }
    return null;
  }

  /// Saves project config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectConfigSaveReq] projectConfigSaveReq (required):
  Future<Response> projectConfigSaveWithHttpInfo(
    ProjectConfigSaveReq projectConfigSaveReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projectConfig';

    // ignore: prefer_final_locals
    Object? postBody = projectConfigSaveReq;

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

  /// Saves project config
  ///
  /// Parameters:
  ///
  /// * [ProjectConfigSaveReq] projectConfigSaveReq (required):
  Future<GenericRsp?> projectConfigSave(
    ProjectConfigSaveReq projectConfigSaveReq,
  ) async {
    final response = await projectConfigSaveWithHttpInfo(
      projectConfigSaveReq,
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

  /// Tests webhook backend
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectConfigWebhookTestReq] projectConfigWebhookTestReq (required):
  Future<Response> projectConfigWebhookTestWithHttpInfo(
    ProjectConfigWebhookTestReq projectConfigWebhookTestReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projectConfig/testWebhook';

    // ignore: prefer_final_locals
    Object? postBody = projectConfigWebhookTestReq;

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

  /// Tests webhook backend
  ///
  /// Parameters:
  ///
  /// * [ProjectConfigWebhookTestReq] projectConfigWebhookTestReq (required):
  Future<ProjectConfigWebhookTestRsp?> projectConfigWebhookTest(
    ProjectConfigWebhookTestReq projectConfigWebhookTestReq,
  ) async {
    final response = await projectConfigWebhookTestWithHttpInfo(
      projectConfigWebhookTestReq,
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
        'ProjectConfigWebhookTestRsp',
      ) as ProjectConfigWebhookTestRsp;
    }
    return null;
  }
}
