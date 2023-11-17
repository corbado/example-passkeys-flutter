# backend_api_public.api.RequestLogsApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**requestLogGet**](RequestLogsApi.md#requestlogget) | **GET** /v1/requestLogs/{requestID} | 
[**requestLogsList**](RequestLogsApi.md#requestlogslist) | **GET** /v1/requestLogs | 


# **requestLogGet**
> RequestLogGetRsp requestLogGet(requestID, remoteAddress, userAgent)



Retrieves request log entry by ID. If multiple requests with the same ID are found, the most recent one is returned

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RequestLogsApi();
final requestID = requestID_example; // String | ID of request
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent

try {
    final result = api_instance.requestLogGet(requestID, remoteAddress, userAgent);
    print(result);
} catch (e) {
    print('Exception when calling RequestLogsApi->requestLogGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestID** | **String**| ID of request | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 

### Return type

[**RequestLogGetRsp**](RequestLogGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestLogsList**
> RequestLogsListRsp requestLogsList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists request logs for given filters

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RequestLogsApi();
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.requestLogsList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling RequestLogsApi->requestLogsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 
 **sort** | **String**| Field sorting | [optional] 
 **filterLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Field filtering | [optional] [default to const []]
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**RequestLogsListRsp**](RequestLogsListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

