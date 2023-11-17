//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PasskeysBiometricsApi {
  PasskeysBiometricsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Starts association token flow for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebAuthnAssociateStartReq] webAuthnAssociateStartReq (required):
  Future<Response> webAuthnAssociateStartWithHttpInfo(WebAuthnAssociateStartReq webAuthnAssociateStartReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/associate/start';

    // ignore: prefer_final_locals
    Object? postBody = webAuthnAssociateStartReq;

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

  /// Starts association token flow for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [WebAuthnAssociateStartReq] webAuthnAssociateStartReq (required):
  Future<WebAuthnAssociateStartRsp?> webAuthnAssociateStart(WebAuthnAssociateStartReq webAuthnAssociateStartReq,) async {
    final response = await webAuthnAssociateStartWithHttpInfo(webAuthnAssociateStartReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnAssociateStartRsp',) as WebAuthnAssociateStartRsp;
    
    }
    return null;
  }

  /// Completes authentication of a user for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebAuthnFinishReq] webAuthnFinishReq (required):
  Future<Response> webAuthnAuthenticateFinishWithHttpInfo(WebAuthnFinishReq webAuthnFinishReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/authenticate/finish';

    // ignore: prefer_final_locals
    Object? postBody = webAuthnFinishReq;

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

  /// Completes authentication of a user for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [WebAuthnFinishReq] webAuthnFinishReq (required):
  Future<WebAuthnAuthenticateFinishRsp?> webAuthnAuthenticateFinish(WebAuthnFinishReq webAuthnFinishReq,) async {
    final response = await webAuthnAuthenticateFinishWithHttpInfo(webAuthnFinishReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnAuthenticateFinishRsp',) as WebAuthnAuthenticateFinishRsp;
    
    }
    return null;
  }

  /// Starts authentication of a user for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebAuthnAuthenticateStartReq] webAuthnAuthenticateStartReq (required):
  Future<Response> webAuthnAuthenticateStartWithHttpInfo(WebAuthnAuthenticateStartReq webAuthnAuthenticateStartReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/authenticate/start';

    // ignore: prefer_final_locals
    Object? postBody = webAuthnAuthenticateStartReq;

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

  /// Starts authentication of a user for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [WebAuthnAuthenticateStartReq] webAuthnAuthenticateStartReq (required):
  Future<WebAuthnAuthenticateStartRsp?> webAuthnAuthenticateStart(WebAuthnAuthenticateStartReq webAuthnAuthenticateStartReq,) async {
    final response = await webAuthnAuthenticateStartWithHttpInfo(webAuthnAuthenticateStartReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnAuthenticateStartRsp',) as WebAuthnAuthenticateStartRsp;
    
    }
    return null;
  }

  /// Update authenticator
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authenticatorID (required):
  ///   ID of authenticator
  ///
  /// * [WebAuthnAuthenticatorUpdateReq] webAuthnAuthenticatorUpdateReq (required):
  Future<Response> webAuthnAuthenticatorUpdateWithHttpInfo(String authenticatorID, WebAuthnAuthenticatorUpdateReq webAuthnAuthenticatorUpdateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/authenticator/{authenticatorID}'
      .replaceAll('{authenticatorID}', authenticatorID);

    // ignore: prefer_final_locals
    Object? postBody = webAuthnAuthenticatorUpdateReq;

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

  /// Update authenticator
  ///
  /// Parameters:
  ///
  /// * [String] authenticatorID (required):
  ///   ID of authenticator
  ///
  /// * [WebAuthnAuthenticatorUpdateReq] webAuthnAuthenticatorUpdateReq (required):
  Future<GenericRsp?> webAuthnAuthenticatorUpdate(String authenticatorID, WebAuthnAuthenticatorUpdateReq webAuthnAuthenticatorUpdateReq,) async {
    final response = await webAuthnAuthenticatorUpdateWithHttpInfo(authenticatorID, webAuthnAuthenticatorUpdateReq,);
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

  /// Delete credential
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] credentialID (required):
  ///   ID of credential
  ///
  /// * [EmptyReq] emptyReq (required):
  Future<Response> webAuthnCredentialDeleteWithHttpInfo(String userID, String credentialID, EmptyReq emptyReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/credentials/{credentialID}'
      .replaceAll('{userID}', userID)
      .replaceAll('{credentialID}', credentialID);

    // ignore: prefer_final_locals
    Object? postBody = emptyReq;

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

  /// Delete credential
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] credentialID (required):
  ///   ID of credential
  ///
  /// * [EmptyReq] emptyReq (required):
  Future<GenericRsp?> webAuthnCredentialDelete(String userID, String credentialID, EmptyReq emptyReq,) async {
    final response = await webAuthnCredentialDeleteWithHttpInfo(userID, credentialID, emptyReq,);
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

  /// Checks if active webauthn credential exists for provided user and device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebAuthnCredentialExistsReq] webAuthnCredentialExistsReq (required):
  Future<Response> webAuthnCredentialExistsWithHttpInfo(WebAuthnCredentialExistsReq webAuthnCredentialExistsReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/credential/exists';

    // ignore: prefer_final_locals
    Object? postBody = webAuthnCredentialExistsReq;

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

  /// Checks if active webauthn credential exists for provided user and device
  ///
  /// Parameters:
  ///
  /// * [WebAuthnCredentialExistsReq] webAuthnCredentialExistsReq (required):
  Future<WebAuthnCredentialExistsRsp?> webAuthnCredentialExists(WebAuthnCredentialExistsReq webAuthnCredentialExistsReq,) async {
    final response = await webAuthnCredentialExistsWithHttpInfo(webAuthnCredentialExistsReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnCredentialExistsRsp',) as WebAuthnCredentialExistsRsp;
    
    }
    return null;
  }

  /// Update credential
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] credentialID (required):
  ///   ID of credential
  ///
  /// * [WebAuthnCredentialReq] webAuthnCredentialReq (required):
  Future<Response> webAuthnCredentialUpdateWithHttpInfo(String credentialID, WebAuthnCredentialReq webAuthnCredentialReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/credential/{credentialID}'
      .replaceAll('{credentialID}', credentialID);

    // ignore: prefer_final_locals
    Object? postBody = webAuthnCredentialReq;

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

  /// Update credential
  ///
  /// Parameters:
  ///
  /// * [String] credentialID (required):
  ///   ID of credential
  ///
  /// * [WebAuthnCredentialReq] webAuthnCredentialReq (required):
  Future<WebAuthnCredentialRsp?> webAuthnCredentialUpdate(String credentialID, WebAuthnCredentialReq webAuthnCredentialReq,) async {
    final response = await webAuthnCredentialUpdateWithHttpInfo(credentialID, webAuthnCredentialReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnCredentialRsp',) as WebAuthnCredentialRsp;
    
    }
    return null;
  }

  /// Starts mediation for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebAuthnMediationStartReq] webAuthnMediationStartReq (required):
  Future<Response> webAuthnMediationStartWithHttpInfo(WebAuthnMediationStartReq webAuthnMediationStartReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/mediation/start';

    // ignore: prefer_final_locals
    Object? postBody = webAuthnMediationStartReq;

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

  /// Starts mediation for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [WebAuthnMediationStartReq] webAuthnMediationStartReq (required):
  Future<WebAuthnMediationStartRsp?> webAuthnMediationStart(WebAuthnMediationStartReq webAuthnMediationStartReq,) async {
    final response = await webAuthnMediationStartWithHttpInfo(webAuthnMediationStartReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnMediationStartRsp',) as WebAuthnMediationStartRsp;
    
    }
    return null;
  }

  /// Completes registration of a user for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebAuthnFinishReq] webAuthnFinishReq (required):
  Future<Response> webAuthnRegisterFinishWithHttpInfo(WebAuthnFinishReq webAuthnFinishReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/register/finish';

    // ignore: prefer_final_locals
    Object? postBody = webAuthnFinishReq;

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

  /// Completes registration of a user for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [WebAuthnFinishReq] webAuthnFinishReq (required):
  Future<WebAuthnRegisterFinishRsp?> webAuthnRegisterFinish(WebAuthnFinishReq webAuthnFinishReq,) async {
    final response = await webAuthnRegisterFinishWithHttpInfo(webAuthnFinishReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnRegisterFinishRsp',) as WebAuthnRegisterFinishRsp;
    
    }
    return null;
  }

  /// Starts registration of a user for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebAuthnRegisterStartReq] webAuthnRegisterStartReq:
  Future<Response> webAuthnRegisterStartWithHttpInfo({ WebAuthnRegisterStartReq? webAuthnRegisterStartReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/register/start';

    // ignore: prefer_final_locals
    Object? postBody = webAuthnRegisterStartReq;

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

  /// Starts registration of a user for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [WebAuthnRegisterStartReq] webAuthnRegisterStartReq:
  Future<WebAuthnRegisterStartRsp?> webAuthnRegisterStart({ WebAuthnRegisterStartReq? webAuthnRegisterStartReq, }) async {
    final response = await webAuthnRegisterStartWithHttpInfo( webAuthnRegisterStartReq: webAuthnRegisterStartReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebAuthnRegisterStartRsp',) as WebAuthnRegisterStartRsp;
    
    }
    return null;
  }

  /// Creates a new setting for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WebauthnSettingCreateReq] webauthnSettingCreateReq:
  Future<Response> webAuthnSettingCreateWithHttpInfo({ WebauthnSettingCreateReq? webauthnSettingCreateReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/settings';

    // ignore: prefer_final_locals
    Object? postBody = webauthnSettingCreateReq;

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

  /// Creates a new setting for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [WebauthnSettingCreateReq] webauthnSettingCreateReq:
  Future<WebauthnSettingCreateRsp?> webAuthnSettingCreate({ WebauthnSettingCreateReq? webauthnSettingCreateReq, }) async {
    final response = await webAuthnSettingCreateWithHttpInfo( webauthnSettingCreateReq: webauthnSettingCreateReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebauthnSettingCreateRsp',) as WebauthnSettingCreateRsp;
    
    }
    return null;
  }

  /// Deletes a setting by id for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] settingID (required):
  ///   ID from create
  ///
  /// * [WebauthnSettingDeleteReq] webauthnSettingDeleteReq:
  Future<Response> webAuthnSettingDeleteWithHttpInfo(String settingID, { WebauthnSettingDeleteReq? webauthnSettingDeleteReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/settings/{settingID}'
      .replaceAll('{settingID}', settingID);

    // ignore: prefer_final_locals
    Object? postBody = webauthnSettingDeleteReq;

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

  /// Deletes a setting by id for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [String] settingID (required):
  ///   ID from create
  ///
  /// * [WebauthnSettingDeleteReq] webauthnSettingDeleteReq:
  Future<GenericRsp?> webAuthnSettingDelete(String settingID, { WebauthnSettingDeleteReq? webauthnSettingDeleteReq, }) async {
    final response = await webAuthnSettingDeleteWithHttpInfo(settingID,  webauthnSettingDeleteReq: webauthnSettingDeleteReq, );
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

  /// Gets a setting by id for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] settingID (required):
  ///   ID from create
  Future<Response> webAuthnSettingGetWithHttpInfo(String settingID,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/settings/{settingID}'
      .replaceAll('{settingID}', settingID);

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

  /// Gets a setting by id for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [String] settingID (required):
  ///   ID from create
  Future<WebauthnSettingGetRsp?> webAuthnSettingGet(String settingID,) async {
    final response = await webAuthnSettingGetWithHttpInfo(settingID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebauthnSettingGetRsp',) as WebauthnSettingGetRsp;
    
    }
    return null;
  }

  /// Lists all settings for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  ///
  /// * [String] sort:
  ///   Field sorting
  ///
  /// * [List<String>] filterLeftSquareBracketRightSquareBracket:
  ///   Field filtering
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] pageSize:
  ///   Number of items per page
  Future<Response> webAuthnSettingListWithHttpInfo({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/settings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (remoteAddress != null) {
      queryParams.addAll(_queryParams('', 'remoteAddress', remoteAddress));
    }
    if (userAgent != null) {
      queryParams.addAll(_queryParams('', 'userAgent', userAgent));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (filterLeftSquareBracketRightSquareBracket != null) {
      queryParams.addAll(_queryParams('multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }

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

  /// Lists all settings for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  ///
  /// * [String] sort:
  ///   Field sorting
  ///
  /// * [List<String>] filterLeftSquareBracketRightSquareBracket:
  ///   Field filtering
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] pageSize:
  ///   Number of items per page
  Future<WebauthnSettingListRsp?> webAuthnSettingList({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await webAuthnSettingListWithHttpInfo( remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebauthnSettingListRsp',) as WebauthnSettingListRsp;
    
    }
    return null;
  }

  /// Updates a setting by id for Passkeys (Biometrics)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] settingID (required):
  ///   ID from create
  ///
  /// * [WebauthnSettingUpdateReq] webauthnSettingUpdateReq:
  Future<Response> webAuthnSettingPutWithHttpInfo(String settingID, { WebauthnSettingUpdateReq? webauthnSettingUpdateReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webauthn/settings/{settingID}'
      .replaceAll('{settingID}', settingID);

    // ignore: prefer_final_locals
    Object? postBody = webauthnSettingUpdateReq;

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

  /// Updates a setting by id for Passkeys (Biometrics)
  ///
  /// Parameters:
  ///
  /// * [String] settingID (required):
  ///   ID from create
  ///
  /// * [WebauthnSettingUpdateReq] webauthnSettingUpdateReq:
  Future<WebauthnSettingUpdateRsp?> webAuthnSettingPut(String settingID, { WebauthnSettingUpdateReq? webauthnSettingUpdateReq, }) async {
    final response = await webAuthnSettingPutWithHttpInfo(settingID,  webauthnSettingUpdateReq: webauthnSettingUpdateReq, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebauthnSettingUpdateRsp',) as WebauthnSettingUpdateRsp;
    
    }
    return null;
  }
}
