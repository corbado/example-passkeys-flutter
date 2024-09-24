//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzerApi {
  AnalyzerApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Provides project's passkeys raw tracking data per visitor
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
  Future<Response> trackingAllRequestWithHttpInfo({
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking';

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
      queryParams.addAll(_queryParams(
          'multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
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

  /// Provides project's passkeys raw tracking data per visitor
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
  Future<TrackingRawListRsp?> trackingAllRequest({
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await trackingAllRequestWithHttpInfo(
      remoteAddress: remoteAddress,
      userAgent: userAgent,
      sort: sort,
      filterLeftSquareBracketRightSquareBracket:
          filterLeftSquareBracketRightSquareBracket,
      page: page,
      pageSize: pageSize,
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
        'TrackingRawListRsp',
      ) as TrackingRawListRsp;
    }
    return null;
  }

  /// Provides tracking credential backup state data
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
  Future<Response> trackingBackupStateGetWithHttpInfo({
    String? remoteAddress,
    String? userAgent,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/backupState';

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

  /// Provides tracking credential backup state data
  ///
  /// Parameters:
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<TrackingBackupStateGetRsp?> trackingBackupStateGet({
    String? remoteAddress,
    String? userAgent,
  }) async {
    final response = await trackingBackupStateGetWithHttpInfo(
      remoteAddress: remoteAddress,
      userAgent: userAgent,
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
        'TrackingBackupStateGetRsp',
      ) as TrackingBackupStateGetRsp;
    }
    return null;
  }

  /// Provides detailed browser tracking data
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
  Future<Response> trackingBrowserDetailedStatsListWithHttpInfo(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/browser/stats/detailed';

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
      queryParams.addAll(_queryParams(
          'multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
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

  /// Provides detailed browser tracking data
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
  Future<TrackingBrowserDetailedStatsListRsp?> trackingBrowserDetailedStatsList(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await trackingBrowserDetailedStatsListWithHttpInfo(
      granularity,
      remoteAddress: remoteAddress,
      userAgent: userAgent,
      sort: sort,
      filterLeftSquareBracketRightSquareBracket:
          filterLeftSquareBracketRightSquareBracket,
      page: page,
      pageSize: pageSize,
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
        'TrackingBrowserDetailedStatsListRsp',
      ) as TrackingBrowserDetailedStatsListRsp;
    }
    return null;
  }

  /// Provides browser tracking data
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
  Future<Response> trackingBrowserStatsListWithHttpInfo(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/browser/stats';

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
      queryParams.addAll(_queryParams(
          'multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
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

  /// Provides browser tracking data
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
  Future<TrackingBrowserStatsListRsp?> trackingBrowserStatsList(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await trackingBrowserStatsListWithHttpInfo(
      granularity,
      remoteAddress: remoteAddress,
      userAgent: userAgent,
      sort: sort,
      filterLeftSquareBracketRightSquareBracket:
          filterLeftSquareBracketRightSquareBracket,
      page: page,
      pageSize: pageSize,
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
        'TrackingBrowserStatsListRsp',
      ) as TrackingBrowserStatsListRsp;
    }
    return null;
  }

  /// Provides detailed tracking data
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
  Future<Response> trackingDetailedStatsListWithHttpInfo(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/stats/detailed';

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
      queryParams.addAll(_queryParams(
          'multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
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

  /// Provides detailed tracking data
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
  Future<TrackingDetailedStatsListRsp?> trackingDetailedStatsList(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await trackingDetailedStatsListWithHttpInfo(
      granularity,
      remoteAddress: remoteAddress,
      userAgent: userAgent,
      sort: sort,
      filterLeftSquareBracketRightSquareBracket:
          filterLeftSquareBracketRightSquareBracket,
      page: page,
      pageSize: pageSize,
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
        'TrackingDetailedStatsListRsp',
      ) as TrackingDetailedStatsListRsp;
    }
    return null;
  }

  /// Provides tracking enum values
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
  Future<Response> trackingEnumsGetWithHttpInfo({
    String? remoteAddress,
    String? userAgent,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/enums';

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

  /// Provides tracking enum values
  ///
  /// Parameters:
  ///
  /// * [String] remoteAddress:
  ///   Client's remote address
  ///
  /// * [String] userAgent:
  ///   Client's user agent
  Future<TrackingEnumsGetRsp?> trackingEnumsGet({
    String? remoteAddress,
    String? userAgent,
  }) async {
    final response = await trackingEnumsGetWithHttpInfo(
      remoteAddress: remoteAddress,
      userAgent: userAgent,
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
        'TrackingEnumsGetRsp',
      ) as TrackingEnumsGetRsp;
    }
    return null;
  }

  /// Provides detailed OS tracking data
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
  Future<Response> trackingOSDetailedStatsListWithHttpInfo(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/os/stats/detailed';

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
      queryParams.addAll(_queryParams(
          'multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
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

  /// Provides detailed OS tracking data
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
  Future<TrackingOSDetailedStatsListRsp?> trackingOSDetailedStatsList(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await trackingOSDetailedStatsListWithHttpInfo(
      granularity,
      remoteAddress: remoteAddress,
      userAgent: userAgent,
      sort: sort,
      filterLeftSquareBracketRightSquareBracket:
          filterLeftSquareBracketRightSquareBracket,
      page: page,
      pageSize: pageSize,
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
        'TrackingOSDetailedStatsListRsp',
      ) as TrackingOSDetailedStatsListRsp;
    }
    return null;
  }

  /// Provides os tracking data
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
  Future<Response> trackingOSStatsListWithHttpInfo(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/os/stats';

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
      queryParams.addAll(_queryParams(
          'multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
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

  /// Provides os tracking data
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
  Future<TrackingOSStatsListRsp?> trackingOSStatsList(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await trackingOSStatsListWithHttpInfo(
      granularity,
      remoteAddress: remoteAddress,
      userAgent: userAgent,
      sort: sort,
      filterLeftSquareBracketRightSquareBracket:
          filterLeftSquareBracketRightSquareBracket,
      page: page,
      pageSize: pageSize,
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
        'TrackingOSStatsListRsp',
      ) as TrackingOSStatsListRsp;
    }
    return null;
  }

  /// Provides aggregated statstics for project's passkeys tracking data
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
  Future<Response> trackingStatsListWithHttpInfo(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tracking/stats';

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
      queryParams.addAll(_queryParams(
          'multi', 'filter[]', filterLeftSquareBracketRightSquareBracket));
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

  /// Provides aggregated statstics for project's passkeys tracking data
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
  Future<TrackingStatsListRsp?> trackingStatsList(
    String granularity, {
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await trackingStatsListWithHttpInfo(
      granularity,
      remoteAddress: remoteAddress,
      userAgent: userAgent,
      sort: sort,
      filterLeftSquareBracketRightSquareBracket:
          filterLeftSquareBracketRightSquareBracket,
      page: page,
      pageSize: pageSize,
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
        'TrackingStatsListRsp',
      ) as TrackingStatsListRsp;
    }
    return null;
  }
}
