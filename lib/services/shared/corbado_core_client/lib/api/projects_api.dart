//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectsApi {
  ProjectsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AutomatedProjectCreateReq] automatedProjectCreateReq (required):
  Future<Response> automatedProjectCreateWithHttpInfo(AutomatedProjectCreateReq automatedProjectCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/automated/projects';

    // ignore: prefer_final_locals
    Object? postBody = automatedProjectCreateReq;

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

  /// Creates a new project
  ///
  /// Parameters:
  ///
  /// * [AutomatedProjectCreateReq] automatedProjectCreateReq (required):
  Future<AutomatedProjectCreateRsp?> automatedProjectCreate(AutomatedProjectCreateReq automatedProjectCreateReq,) async {
    final response = await automatedProjectCreateWithHttpInfo(automatedProjectCreateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedProjectCreateRsp',) as AutomatedProjectCreateRsp;
    
    }
    return null;
  }

  /// Creates a new project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectCreateReq] projectCreateReq (required):
  Future<Response> projectCreateWithHttpInfo(ProjectCreateReq projectCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

    // ignore: prefer_final_locals
    Object? postBody = projectCreateReq;

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

  /// Creates a new project
  ///
  /// Parameters:
  ///
  /// * [ProjectCreateReq] projectCreateReq (required):
  Future<ProjectCreateRsp?> projectCreate(ProjectCreateReq projectCreateReq,) async {
    final response = await projectCreateWithHttpInfo(projectCreateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectCreateRsp',) as ProjectCreateRsp;
    
    }
    return null;
  }

  /// Deletes an existing project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectDeleteReq] projectDeleteReq (required):
  Future<Response> projectDeleteWithHttpInfo(ProjectDeleteReq projectDeleteReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

    // ignore: prefer_final_locals
    Object? postBody = projectDeleteReq;

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

  /// Deletes an existing project
  ///
  /// Parameters:
  ///
  /// * [ProjectDeleteReq] projectDeleteReq (required):
  Future<GenericRsp?> projectDelete(ProjectDeleteReq projectDeleteReq,) async {
    final response = await projectDeleteWithHttpInfo(projectDeleteReq,);
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

  /// Creates a new developer info for a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [ProjectDeveloperInfoCreateReq] projectDeveloperInfoCreateReq (required):
  Future<Response> projectDeveloperInfoCreateWithHttpInfo(String projectID, ProjectDeveloperInfoCreateReq projectDeveloperInfoCreateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectID}/developerInfo'
      .replaceAll('{projectID}', projectID);

    // ignore: prefer_final_locals
    Object? postBody = projectDeveloperInfoCreateReq;

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

  /// Creates a new developer info for a project
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [ProjectDeveloperInfoCreateReq] projectDeveloperInfoCreateReq (required):
  Future<GenericRsp?> projectDeveloperInfoCreate(String projectID, ProjectDeveloperInfoCreateReq projectDeveloperInfoCreateReq,) async {
    final response = await projectDeveloperInfoCreateWithHttpInfo(projectID, projectDeveloperInfoCreateReq,);
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

  /// Get current developer info for a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  Future<Response> projectDeveloperInfoGetWithHttpInfo(String projectID,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectID}/developerInfo'
      .replaceAll('{projectID}', projectID);

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

  /// Get current developer info for a project
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  Future<ProjectDeveloperInfoGetRsp?> projectDeveloperInfoGet(String projectID,) async {
    final response = await projectDeveloperInfoGetWithHttpInfo(projectID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectDeveloperInfoGetRsp',) as ProjectDeveloperInfoGetRsp;
    
    }
    return null;
  }

  /// Invites a new user to an existing project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [ProjectInviteReq] projectInviteReq (required):
  Future<Response> projectInviteWithHttpInfo(String projectID, ProjectInviteReq projectInviteReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectID}/invites'
      .replaceAll('{projectID}', projectID);

    // ignore: prefer_final_locals
    Object? postBody = projectInviteReq;

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

  /// Invites a new user to an existing project
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [ProjectInviteReq] projectInviteReq (required):
  Future<ProjectInviteRsp?> projectInvite(String projectID, ProjectInviteReq projectInviteReq,) async {
    final response = await projectInviteWithHttpInfo(projectID, projectInviteReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectInviteRsp',) as ProjectInviteRsp;
    
    }
    return null;
  }

  /// Accepts an invitation to an existing project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectInviteAcceptReq] projectInviteAcceptReq (required):
  Future<Response> projectInviteAcceptWithHttpInfo(ProjectInviteAcceptReq projectInviteAcceptReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/invites/accept';

    // ignore: prefer_final_locals
    Object? postBody = projectInviteAcceptReq;

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

  /// Accepts an invitation to an existing project
  ///
  /// Parameters:
  ///
  /// * [ProjectInviteAcceptReq] projectInviteAcceptReq (required):
  Future<ProjectInviteAcceptRsp?> projectInviteAccept(ProjectInviteAcceptReq projectInviteAcceptReq,) async {
    final response = await projectInviteAcceptWithHttpInfo(projectInviteAcceptReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectInviteAcceptRsp',) as ProjectInviteAcceptRsp;
    
    }
    return null;
  }

  /// Deletes project invite
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [String] inviteID (required):
  ///   ID of the project invitation
  ///
  /// * [ProjectInviteDeleteReq] projectInviteDeleteReq:
  Future<Response> projectInviteDeleteWithHttpInfo(String projectID, String inviteID, { ProjectInviteDeleteReq? projectInviteDeleteReq, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectID}/invites/{inviteID}'
      .replaceAll('{projectID}', projectID)
      .replaceAll('{inviteID}', inviteID);

    // ignore: prefer_final_locals
    Object? postBody = projectInviteDeleteReq;

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

  /// Deletes project invite
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [String] inviteID (required):
  ///   ID of the project invitation
  ///
  /// * [ProjectInviteDeleteReq] projectInviteDeleteReq:
  Future<GenericRsp?> projectInviteDelete(String projectID, String inviteID, { ProjectInviteDeleteReq? projectInviteDeleteReq, }) async {
    final response = await projectInviteDeleteWithHttpInfo(projectID, inviteID,  projectInviteDeleteReq: projectInviteDeleteReq, );
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

  /// Lists all open invitations for a given project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
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
  Future<Response> projectInviteListWithHttpInfo(String projectID, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectID}/invites'
      .replaceAll('{projectID}', projectID);

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

  /// Lists all open invitations for a given project
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
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
  Future<ProjectInviteListRsp?> projectInviteList(String projectID, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await projectInviteListWithHttpInfo(projectID,  remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectInviteListRsp',) as ProjectInviteListRsp;
    
    }
    return null;
  }

  /// Resend a user invitation to an existing project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [ProjectInviteResendReq] projectInviteResendReq (required):
  Future<Response> projectInviteResendWithHttpInfo(String projectID, ProjectInviteResendReq projectInviteResendReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectID}/invites'
      .replaceAll('{projectID}', projectID);

    // ignore: prefer_final_locals
    Object? postBody = projectInviteResendReq;

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

  /// Resend a user invitation to an existing project
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
  ///
  /// * [ProjectInviteResendReq] projectInviteResendReq (required):
  Future<GenericRsp?> projectInviteResend(String projectID, ProjectInviteResendReq projectInviteResendReq,) async {
    final response = await projectInviteResendWithHttpInfo(projectID, projectInviteResendReq,);
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

  /// Lists user's projects for given filters
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
  Future<Response> projectListWithHttpInfo({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

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

  /// Lists user's projects for given filters
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
  Future<ProjectListRsp?> projectList({ String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await projectListWithHttpInfo( remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectListRsp',) as ProjectListRsp;
    
    }
    return null;
  }

  /// Lists all other users that have permission to the project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
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
  Future<Response> projectPermissionListWithHttpInfo(String projectID, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectID}/permissions'
      .replaceAll('{projectID}', projectID);

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

  /// Lists all other users that have permission to the project
  ///
  /// Parameters:
  ///
  /// * [String] projectID (required):
  ///   ID of project
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
  Future<ProjectPermissionListRsp?> projectPermissionList(String projectID, { String? remoteAddress, String? userAgent, String? sort, List<String>? filterLeftSquareBracketRightSquareBracket, int? page, int? pageSize, }) async {
    final response = await projectPermissionListWithHttpInfo(projectID,  remoteAddress: remoteAddress, userAgent: userAgent, sort: sort, filterLeftSquareBracketRightSquareBracket: filterLeftSquareBracketRightSquareBracket, page: page, pageSize: pageSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectPermissionListRsp',) as ProjectPermissionListRsp;
    
    }
    return null;
  }

  /// Updates an existing project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectUpdateReq] projectUpdateReq (required):
  Future<Response> projectUpdateWithHttpInfo(ProjectUpdateReq projectUpdateReq,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

    // ignore: prefer_final_locals
    Object? postBody = projectUpdateReq;

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

  /// Updates an existing project
  ///
  /// Parameters:
  ///
  /// * [ProjectUpdateReq] projectUpdateReq (required):
  Future<ProjectUpdateRsp?> projectUpdate(ProjectUpdateReq projectUpdateReq,) async {
    final response = await projectUpdateWithHttpInfo(projectUpdateReq,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectUpdateRsp',) as ProjectUpdateRsp;
    
    }
    return null;
  }
}
