# backend_api_public.api.AndroidAppConfigApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**androidAppConfigCreate**](AndroidAppConfigApi.md#androidappconfigcreate) | **POST** /v1/androidappconfig | 
[**androidAppConfigDelete**](AndroidAppConfigApi.md#androidappconfigdelete) | **DELETE** /v1/androidappconfig/{androidAppConfigID} | 
[**androidAppConfigGet**](AndroidAppConfigApi.md#androidappconfigget) | **GET** /v1/androidappconfig | 
[**androidAppConfigPut**](AndroidAppConfigApi.md#androidappconfigput) | **PUT** /v1/androidappconfig/{androidAppConfigID} | 


# **androidAppConfigCreate**
> AndroidAppConfigSaveRsp androidAppConfigCreate(androidAppConfigSaveReq)



Creates a new Android App Configuration

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

final api_instance = AndroidAppConfigApi();
final androidAppConfigSaveReq = AndroidAppConfigSaveReq(); // AndroidAppConfigSaveReq | 

try {
    final result = api_instance.androidAppConfigCreate(androidAppConfigSaveReq);
    print(result);
} catch (e) {
    print('Exception when calling AndroidAppConfigApi->androidAppConfigCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **androidAppConfigSaveReq** | [**AndroidAppConfigSaveReq**](AndroidAppConfigSaveReq.md)|  | 

### Return type

[**AndroidAppConfigSaveRsp**](AndroidAppConfigSaveRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **androidAppConfigDelete**
> GenericRsp androidAppConfigDelete(androidAppConfigID, androidAppConfigDeleteReq)



Deletes an Android App Config

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

final api_instance = AndroidAppConfigApi();
final androidAppConfigID = and-abc123; // String | Android App Config ID from create
final androidAppConfigDeleteReq = AndroidAppConfigDeleteReq(); // AndroidAppConfigDeleteReq | 

try {
    final result = api_instance.androidAppConfigDelete(androidAppConfigID, androidAppConfigDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling AndroidAppConfigApi->androidAppConfigDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **androidAppConfigID** | **String**| Android App Config ID from create | 
 **androidAppConfigDeleteReq** | [**AndroidAppConfigDeleteReq**](AndroidAppConfigDeleteReq.md)|  | [optional] 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **androidAppConfigGet**
> AndroidAppConfigListRsp androidAppConfigGet()



Lists Android App Configurations for a project

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

final api_instance = AndroidAppConfigApi();

try {
    final result = api_instance.androidAppConfigGet();
    print(result);
} catch (e) {
    print('Exception when calling AndroidAppConfigApi->androidAppConfigGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AndroidAppConfigListRsp**](AndroidAppConfigListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **androidAppConfigPut**
> AndroidAppConfigUpdateRsp androidAppConfigPut(androidAppConfigID, androidAppConfigUpdateReq)



Updates an Android app config by id

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

final api_instance = AndroidAppConfigApi();
final androidAppConfigID = and-abc123; // String | ID from Android config create
final androidAppConfigUpdateReq = AndroidAppConfigUpdateReq(); // AndroidAppConfigUpdateReq | 

try {
    final result = api_instance.androidAppConfigPut(androidAppConfigID, androidAppConfigUpdateReq);
    print(result);
} catch (e) {
    print('Exception when calling AndroidAppConfigApi->androidAppConfigPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **androidAppConfigID** | **String**| ID from Android config create | 
 **androidAppConfigUpdateReq** | [**AndroidAppConfigUpdateReq**](AndroidAppConfigUpdateReq.md)|  | [optional] 

### Return type

[**AndroidAppConfigUpdateRsp**](AndroidAppConfigUpdateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

