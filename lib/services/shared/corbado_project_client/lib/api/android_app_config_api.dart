//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AndroidAppConfigApi {
  AndroidAppConfigApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new Android App Configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AndroidAppConfigSaveReq] androidAppConfigSaveReq (required):
  Future<Response> androidAppConfigCreateWithHttpInfo(AndroidAppConfigSaveReq androidAppConfigSaveReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/androidappconfig';

    // ignore: prefer_final_locals
    Object? postBody = androidAppConfigSaveReq;

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

  /// Creates a new Android App Configuration
  ///
  /// Parameters:
  ///
  /// * [AndroidAppConfigSaveReq] androidAppConfigSaveReq (required):
  Future<AndroidAppConfigSaveRsp?> androidAppConfigCreate(AndroidAppConfigSaveReq androidAppConfigSaveReq,) async {
    final response = await androidAppConfigCreateWithHttpInfo(androidAppConfigSaveReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AndroidAppConfigSaveRsp',) as AndroidAppConfigSaveRsp;
    
    }
    return null;
  }

  /// Deletes an Android App Config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] androidAppConfigID (required):
  ///   Android App Config ID from create
  ///
  /// * [AndroidAppConfigDeleteReq] androidAppConfigDeleteReq:
  Future<Response> androidAppConfigDeleteWithHttpInfo(String androidAppConfigID, { AndroidAppConfigDeleteReq? androidAppConfigDeleteReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/androidappconfig/{androidAppConfigID}'
      .replaceAll('{androidAppConfigID}', androidAppConfigID);

    // ignore: prefer_final_locals
    Object? postBody = androidAppConfigDeleteReq;

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

  /// Deletes an Android App Config
  ///
  /// Parameters:
  ///
  /// * [String] androidAppConfigID (required):
  ///   Android App Config ID from create
  ///
  /// * [AndroidAppConfigDeleteReq] androidAppConfigDeleteReq:
  Future<GenericRsp?> androidAppConfigDelete(String androidAppConfigID, { AndroidAppConfigDeleteReq? androidAppConfigDeleteReq, }) async {
    final response = await androidAppConfigDeleteWithHttpInfo(androidAppConfigID,  androidAppConfigDeleteReq: androidAppConfigDeleteReq, );
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

  /// Lists Android App Configurations for a project
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> androidAppConfigGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/androidappconfig';

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

  /// Lists Android App Configurations for a project
  Future<AndroidAppConfigListRsp?> androidAppConfigGet() async {
    final response = await androidAppConfigGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AndroidAppConfigListRsp',) as AndroidAppConfigListRsp;
    
    }
    return null;
  }

  /// Updates an Android app config by id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] androidAppConfigID (required):
  ///   ID from Android config create
  ///
  /// * [AndroidAppConfigUpdateReq] androidAppConfigUpdateReq:
  Future<Response> androidAppConfigPutWithHttpInfo(String androidAppConfigID, { AndroidAppConfigUpdateReq? androidAppConfigUpdateReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/androidappconfig/{androidAppConfigID}'
      .replaceAll('{androidAppConfigID}', androidAppConfigID);

    // ignore: prefer_final_locals
    Object? postBody = androidAppConfigUpdateReq;

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

  /// Updates an Android app config by id
  ///
  /// Parameters:
  ///
  /// * [String] androidAppConfigID (required):
  ///   ID from Android config create
  ///
  /// * [AndroidAppConfigUpdateReq] androidAppConfigUpdateReq:
  Future<AndroidAppConfigUpdateRsp?> androidAppConfigPut(String androidAppConfigID, { AndroidAppConfigUpdateReq? androidAppConfigUpdateReq, }) async {
    final response = await androidAppConfigPutWithHttpInfo(androidAppConfigID,  androidAppConfigUpdateReq: androidAppConfigUpdateReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AndroidAppConfigUpdateRsp',) as AndroidAppConfigUpdateRsp;
    
    }
    return null;
  }
}
