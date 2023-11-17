//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lists user auth log
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
  Future<Response> userAuthLogListWithHttpInfo({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/userauthlogs';

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

  /// Lists user auth log
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
  Future<UserAuthLogListRsp?> userAuthLogList({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await userAuthLogListWithHttpInfo( remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserAuthLogListRsp',) as UserAuthLogListRsp;
    
    }
    return null;
  }

  /// Creates a new user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserCreateReq] userCreateReq (required):
  Future<Response> userCreateWithHttpInfo(UserCreateReq userCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users';

    // ignore: prefer_final_locals
    Object? postBody = userCreateReq;

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

  /// Creates a new user
  ///
  /// Parameters:
  ///
  /// * [UserCreateReq] userCreateReq (required):
  Future<UserCreateRsp?> userCreate(UserCreateReq userCreateReq,) async {
    final response = await userCreateWithHttpInfo(userCreateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserCreateRsp',) as UserCreateRsp;
    
    }
    return null;
  }

  /// Add a custom login identifier to an existing user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserCustomLoginIdentifierCreateReq] userCustomLoginIdentifierCreateReq (required):
  Future<Response> userCustomLoginIdentifierCreateWithHttpInfo(String userID, UserCustomLoginIdentifierCreateReq userCustomLoginIdentifierCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/customLoginIdentifiers'
      .replaceAll('{userID}', userID);

    // ignore: prefer_final_locals
    Object? postBody = userCustomLoginIdentifierCreateReq;

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

  /// Add a custom login identifier to an existing user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserCustomLoginIdentifierCreateReq] userCustomLoginIdentifierCreateReq (required):
  Future<UserCustomLoginIdentifierCreateRsp?> userCustomLoginIdentifierCreate(String userID, UserCustomLoginIdentifierCreateReq userCustomLoginIdentifierCreateReq,) async {
    final response = await userCustomLoginIdentifierCreateWithHttpInfo(userID, userCustomLoginIdentifierCreateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserCustomLoginIdentifierCreateRsp',) as UserCustomLoginIdentifierCreateRsp;
    
    }
    return null;
  }

  /// Delete a user's custom login identifier
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] customLoginIdentifierID (required):
  ///   ID of custom login identifier
  ///
  /// * [UserCustomLoginIdentifierDeleteReq] userCustomLoginIdentifierDeleteReq (required):
  Future<Response> userCustomLoginIdentifierDeleteWithHttpInfo(String userID, String customLoginIdentifierID, UserCustomLoginIdentifierDeleteReq userCustomLoginIdentifierDeleteReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/customLoginIdentifiers/{customLoginIdentifierID}'
      .replaceAll('{userID}', userID)
      .replaceAll('{customLoginIdentifierID}', customLoginIdentifierID);

    // ignore: prefer_final_locals
    Object? postBody = userCustomLoginIdentifierDeleteReq;

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

  /// Delete a user's custom login identifier
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] customLoginIdentifierID (required):
  ///   ID of custom login identifier
  ///
  /// * [UserCustomLoginIdentifierDeleteReq] userCustomLoginIdentifierDeleteReq (required):
  Future<GenericRsp?> userCustomLoginIdentifierDelete(String userID, String customLoginIdentifierID, UserCustomLoginIdentifierDeleteReq userCustomLoginIdentifierDeleteReq,) async {
    final response = await userCustomLoginIdentifierDeleteWithHttpInfo(userID, customLoginIdentifierID, userCustomLoginIdentifierDeleteReq,);
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

  /// Get a user's custom login identifier
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] customLoginIdentifierID (required):
  ///   ID of custom login identifier
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<Response> userCustomLoginIdentifierGetWithHttpInfo(String userID, String customLoginIdentifierID, { String? remoteAddress, String? userAgent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/customLoginIdentifiers/{customLoginIdentifierID}'
      .replaceAll('{userID}', userID)
      .replaceAll('{customLoginIdentifierID}', customLoginIdentifierID);

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

  /// Get a user's custom login identifier
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] customLoginIdentifierID (required):
  ///   ID of custom login identifier
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<UserCustomLoginIdentifierGetRsp?> userCustomLoginIdentifierGet(String userID, String customLoginIdentifierID, { String? remoteAddress, String? userAgent, }) async {
    final response = await userCustomLoginIdentifierGetWithHttpInfo(userID, customLoginIdentifierID,  remoteAddress: remoteAddress, userAgent: userAgent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserCustomLoginIdentifierGetRsp',) as UserCustomLoginIdentifierGetRsp;
    
    }
    return null;
  }

  /// Deletes a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserDeleteReq] userDeleteReq (required):
  Future<Response> userDeleteWithHttpInfo(String userID, UserDeleteReq userDeleteReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}'
      .replaceAll('{userID}', userID);

    // ignore: prefer_final_locals
    Object? postBody = userDeleteReq;

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

  /// Deletes a user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserDeleteReq] userDeleteReq (required):
  Future<GenericRsp?> userDelete(String userID, UserDeleteReq userDeleteReq,) async {
    final response = await userDeleteWithHttpInfo(userID, userDeleteReq,);
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

  /// Provides all register devices for given user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
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
  Future<Response> userDeviceListWithHttpInfo(String userID, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/devices'
      .replaceAll('{userID}', userID);

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

  /// Provides all register devices for given user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
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
  Future<UserDeviceListRsp?> userDeviceList(String userID, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await userDeviceListWithHttpInfo(userID,  remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDeviceListRsp',) as UserDeviceListRsp;
    
    }
    return null;
  }

  /// Add an email to an existing user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserEmailCreateReq] userEmailCreateReq (required):
  Future<Response> userEmailCreateWithHttpInfo(String userID, UserEmailCreateReq userEmailCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/emails'
      .replaceAll('{userID}', userID);

    // ignore: prefer_final_locals
    Object? postBody = userEmailCreateReq;

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

  /// Add an email to an existing user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserEmailCreateReq] userEmailCreateReq (required):
  Future<UserEmailCreateRsp?> userEmailCreate(String userID, UserEmailCreateReq userEmailCreateReq,) async {
    final response = await userEmailCreateWithHttpInfo(userID, userEmailCreateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserEmailCreateRsp',) as UserEmailCreateRsp;
    
    }
    return null;
  }

  /// Delete a user's email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] emailID (required):
  ///   ID of email
  ///
  /// * [UserEmailDeleteReq] userEmailDeleteReq (required):
  Future<Response> userEmailDeleteWithHttpInfo(String userID, String emailID, UserEmailDeleteReq userEmailDeleteReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/emails/{emailID}'
      .replaceAll('{userID}', userID)
      .replaceAll('{emailID}', emailID);

    // ignore: prefer_final_locals
    Object? postBody = userEmailDeleteReq;

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

  /// Delete a user's email
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] emailID (required):
  ///   ID of email
  ///
  /// * [UserEmailDeleteReq] userEmailDeleteReq (required):
  Future<GenericRsp?> userEmailDelete(String userID, String emailID, UserEmailDeleteReq userEmailDeleteReq,) async {
    final response = await userEmailDeleteWithHttpInfo(userID, emailID, userEmailDeleteReq,);
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

  /// Get a user's email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] emailID (required):
  ///   ID of email
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<Response> userEmailGetWithHttpInfo(String userID, String emailID, { String? remoteAddress, String? userAgent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/emails/{emailID}'
      .replaceAll('{userID}', userID)
      .replaceAll('{emailID}', emailID);

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

  /// Get a user's email
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] emailID (required):
  ///   ID of email
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<UserEmailGetRsp?> userEmailGet(String userID, String emailID, { String? remoteAddress, String? userAgent, }) async {
    final response = await userEmailGetWithHttpInfo(userID, emailID,  remoteAddress: remoteAddress, userAgent: userAgent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserEmailGetRsp',) as UserEmailGetRsp;
    
    }
    return null;
  }

  /// Get a user by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<Response> userGetWithHttpInfo(String userID, { String? remoteAddress, String? userAgent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}'
      .replaceAll('{userID}', userID);

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

  /// Get a user by ID
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<UserGetRsp?> userGet(String userID, { String? remoteAddress, String? userAgent, }) async {
    final response = await userGetWithHttpInfo(userID,  remoteAddress: remoteAddress, userAgent: userAgent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserGetRsp',) as UserGetRsp;
    
    }
    return null;
  }

  /// Lists project users
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
  Future<Response> userListWithHttpInfo({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users';

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

  /// Lists project users
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
  Future<UserListRsp?> userList({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await userListWithHttpInfo( remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserListRsp',) as UserListRsp;
    
    }
    return null;
  }

  /// Add a phone number to an existing user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserPhoneNumberCreateReq] userPhoneNumberCreateReq (required):
  Future<Response> userPhoneNumberCreateWithHttpInfo(String userID, UserPhoneNumberCreateReq userPhoneNumberCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/phoneNumbers'
      .replaceAll('{userID}', userID);

    // ignore: prefer_final_locals
    Object? postBody = userPhoneNumberCreateReq;

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

  /// Add a phone number to an existing user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserPhoneNumberCreateReq] userPhoneNumberCreateReq (required):
  Future<UserPhoneNumberCreateRsp?> userPhoneNumberCreate(String userID, UserPhoneNumberCreateReq userPhoneNumberCreateReq,) async {
    final response = await userPhoneNumberCreateWithHttpInfo(userID, userPhoneNumberCreateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserPhoneNumberCreateRsp',) as UserPhoneNumberCreateRsp;
    
    }
    return null;
  }

  /// Delete a user's phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] phoneNumberID (required):
  ///   ID of phone number
  ///
  /// * [UserPhoneNumberDeleteReq] userPhoneNumberDeleteReq (required):
  Future<Response> userPhoneNumberDeleteWithHttpInfo(String userID, String phoneNumberID, UserPhoneNumberDeleteReq userPhoneNumberDeleteReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/phoneNumbers/{phoneNumberID}'
      .replaceAll('{userID}', userID)
      .replaceAll('{phoneNumberID}', phoneNumberID);

    // ignore: prefer_final_locals
    Object? postBody = userPhoneNumberDeleteReq;

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

  /// Delete a user's phone number
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] phoneNumberID (required):
  ///   ID of phone number
  ///
  /// * [UserPhoneNumberDeleteReq] userPhoneNumberDeleteReq (required):
  Future<GenericRsp?> userPhoneNumberDelete(String userID, String phoneNumberID, UserPhoneNumberDeleteReq userPhoneNumberDeleteReq,) async {
    final response = await userPhoneNumberDeleteWithHttpInfo(userID, phoneNumberID, userPhoneNumberDeleteReq,);
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

  /// Get a user's phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] phoneNumberID (required):
  ///   ID of phone number
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<Response> userPhoneNumberGetWithHttpInfo(String userID, String phoneNumberID, { String? remoteAddress, String? userAgent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}/phoneNumbers/{phoneNumberID}'
      .replaceAll('{userID}', userID)
      .replaceAll('{phoneNumberID}', phoneNumberID);

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

  /// Get a user's phone number
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [String] phoneNumberID (required):
  ///   ID of phone number
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<UserPhoneNumberGetRsp?> userPhoneNumberGet(String userID, String phoneNumberID, { String? remoteAddress, String? userAgent, }) async {
    final response = await userPhoneNumberGetWithHttpInfo(userID, phoneNumberID,  remoteAddress: remoteAddress, userAgent: userAgent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserPhoneNumberGetRsp',) as UserPhoneNumberGetRsp;
    
    }
    return null;
  }

  /// Provides aggregated user stats for project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] granularity (required):
  ///   Data granularity
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
  Future<Response> userStatsListWithHttpInfo(String granularity, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/stats';

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
      queryParams.addAll(_queryParams('', 'granularity', granularity));

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

  /// Provides aggregated user stats for project
  ///
  /// Parameters:
  ///
  /// * [String] granularity (required):
  ///   Data granularity
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
  Future<UserStatsListRsp?> userStatsList(String granularity, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await userStatsListWithHttpInfo(granularity,  remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserStatsListRsp',) as UserStatsListRsp;
    
    }
    return null;
  }

  /// Updates a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserUpdateReq] userUpdateReq (required):
  Future<Response> userUpdateWithHttpInfo(String userID, UserUpdateReq userUpdateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/users/{userID}'
      .replaceAll('{userID}', userID);

    // ignore: prefer_final_locals
    Object? postBody = userUpdateReq;

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

  /// Updates a user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   ID of user
  ///
  /// * [UserUpdateReq] userUpdateReq (required):
  Future<UserUpdateRsp?> userUpdate(String userID, UserUpdateReq userUpdateReq,) async {
    final response = await userUpdateWithHttpInfo(userID, userUpdateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserUpdateRsp',) as UserUpdateRsp;
    
    }
    return null;
  }
}
