//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebhookLogsApi {
  WebhookLogsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lists webhook logs for given filters
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
  Future<Response> webhookLogsListWithHttpInfo({
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/webhookLogs';

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

  /// Lists webhook logs for given filters
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
  Future<WebhookLogsListRsp?> webhookLogsList({
    String? remoteAddress,
    String? userAgent,
    String? sort,
    List<String>? filterLeftSquareBracketRightSquareBracket,
    int? page,
    int? pageSize,
  }) async {
    final response = await webhookLogsListWithHttpInfo(
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
        'WebhookLogsListRsp',
      ) as WebhookLogsListRsp;
    }
    return null;
  }
}
