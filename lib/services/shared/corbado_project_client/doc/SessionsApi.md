# backend_api_public.api.SessionsApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**longSessionGet**](SessionsApi.md#longsessionget) | **GET** /v1/longSessions/{sessionID} | 
[**longSessionList**](SessionsApi.md#longsessionlist) | **GET** /v1/longSessions | 
[**longSessionRevoke**](SessionsApi.md#longsessionrevoke) | **PUT** /v1/longSessions/{sessionID}/revoke | 


# **longSessionGet**
> LongSessionGetRsp longSessionGet(sessionID)



Get a long session by sessionID

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

final api_instance = SessionsApi();
final sessionID = sessionID_example; // String | ID of session

try {
    final result = api_instance.longSessionGet(sessionID);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->longSessionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionID** | **String**| ID of session | 

### Return type

[**LongSessionGetRsp**](LongSessionGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **longSessionList**
> LongSessionListRsp longSessionList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists long sessions by provided filters

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

final api_instance = SessionsApi();
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.longSessionList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->longSessionList: $e\n');
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

[**LongSessionListRsp**](LongSessionListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **longSessionRevoke**
> GenericRsp longSessionRevoke(sessionID, longSessionRevokeReq)



Revokes an active long session by sessionID

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

final api_instance = SessionsApi();
final sessionID = sessionID_example; // String | ID of session
final longSessionRevokeReq = LongSessionRevokeReq(); // LongSessionRevokeReq | 

try {
    final result = api_instance.longSessionRevoke(sessionID, longSessionRevokeReq);
    print(result);
} catch (e) {
    print('Exception when calling SessionsApi->longSessionRevoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionID** | **String**| ID of session | 
 **longSessionRevokeReq** | [**LongSessionRevokeReq**](LongSessionRevokeReq.md)|  | [optional] 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

