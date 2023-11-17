//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IOSAppConfigApi {
  IOSAppConfigApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new iOS App Config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IOSAppConfigSaveReq] iOSAppConfigSaveReq (required):
  Future<Response> iOSAppConfigCreateWithHttpInfo(IOSAppConfigSaveReq iOSAppConfigSaveReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iosappconfig';

    // ignore: prefer_final_locals
    Object? postBody = iOSAppConfigSaveReq;

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

  /// Creates a new iOS App Config
  ///
  /// Parameters:
  ///
  /// * [IOSAppConfigSaveReq] iOSAppConfigSaveReq (required):
  Future<IOSAppConfigSaveRsp?> iOSAppConfigCreate(IOSAppConfigSaveReq iOSAppConfigSaveReq,) async {
    final response = await iOSAppConfigCreateWithHttpInfo(iOSAppConfigSaveReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IOSAppConfigSaveRsp',) as IOSAppConfigSaveRsp;
    
    }
    return null;
  }

  /// Deletes an iOS App Config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] iosAppConfigID (required):
  ///   iOS App Config ID from create
  ///
  /// * [IOSAppConfigDeleteReq] iOSAppConfigDeleteReq:
  Future<Response> iOSAppConfigDeleteWithHttpInfo(String iosAppConfigID, { IOSAppConfigDeleteReq? iOSAppConfigDeleteReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iosappconfig/{iosAppConfigID}'
      .replaceAll('{iosAppConfigID}', iosAppConfigID);

    // ignore: prefer_final_locals
    Object? postBody = iOSAppConfigDeleteReq;

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

  /// Deletes an iOS App Config
  ///
  /// Parameters:
  ///
  /// * [String] iosAppConfigID (required):
  ///   iOS App Config ID from create
  ///
  /// * [IOSAppConfigDeleteReq] iOSAppConfigDeleteReq:
  Future<GenericRsp?> iOSAppConfigDelete(String iosAppConfigID, { IOSAppConfigDeleteReq? iOSAppConfigDeleteReq, }) async {
    final response = await iOSAppConfigDeleteWithHttpInfo(iosAppConfigID,  iOSAppConfigDeleteReq: iOSAppConfigDeleteReq, );
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

  /// Lists iOS App Configs for a project
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> iOSAppConfigGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iosappconfig';

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

  /// Lists iOS App Configs for a project
  Future<IOSAppConfigListRsp?> iOSAppConfigGet() async {
    final response = await iOSAppConfigGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IOSAppConfigListRsp',) as IOSAppConfigListRsp;
    
    }
    return null;
  }

  /// Updates an iOS app config by id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] iosAppConfigID (required):
  ///   ID from iOS config create
  ///
  /// * [IOSAppConfigUpdateReq] iOSAppConfigUpdateReq:
  Future<Response> iOSAppConfigPutWithHttpInfo(String iosAppConfigID, { IOSAppConfigUpdateReq? iOSAppConfigUpdateReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/iosappconfig/{iosAppConfigID}'
      .replaceAll('{iosAppConfigID}', iosAppConfigID);

    // ignore: prefer_final_locals
    Object? postBody = iOSAppConfigUpdateReq;

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

  /// Updates an iOS app config by id
  ///
  /// Parameters:
  ///
  /// * [String] iosAppConfigID (required):
  ///   ID from iOS config create
  ///
  /// * [IOSAppConfigUpdateReq] iOSAppConfigUpdateReq:
  Future<IOSAppConfigUpdateRsp?> iOSAppConfigPut(String iosAppConfigID, { IOSAppConfigUpdateReq? iOSAppConfigUpdateReq, }) async {
    final response = await iOSAppConfigPutWithHttpInfo(iosAppConfigID,  iOSAppConfigUpdateReq: iOSAppConfigUpdateReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IOSAppConfigUpdateRsp',) as IOSAppConfigUpdateRsp;
    
    }
    return null;
  }
}
