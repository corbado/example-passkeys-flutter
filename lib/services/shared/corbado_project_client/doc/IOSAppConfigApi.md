# backend_api_public.api.IOSAppConfigApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**iOSAppConfigCreate**](IOSAppConfigApi.md#iosappconfigcreate) | **POST** /v1/iosappconfig | 
[**iOSAppConfigDelete**](IOSAppConfigApi.md#iosappconfigdelete) | **DELETE** /v1/iosappconfig/{iosAppConfigID} | 
[**iOSAppConfigGet**](IOSAppConfigApi.md#iosappconfigget) | **GET** /v1/iosappconfig | 
[**iOSAppConfigPut**](IOSAppConfigApi.md#iosappconfigput) | **PUT** /v1/iosappconfig/{iosAppConfigID} | 


# **iOSAppConfigCreate**
> IOSAppConfigSaveRsp iOSAppConfigCreate(iOSAppConfigSaveReq)



Creates a new iOS App Config

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

final api_instance = IOSAppConfigApi();
final iOSAppConfigSaveReq = IOSAppConfigSaveReq(); // IOSAppConfigSaveReq | 

try {
    final result = api_instance.iOSAppConfigCreate(iOSAppConfigSaveReq);
    print(result);
} catch (e) {
    print('Exception when calling IOSAppConfigApi->iOSAppConfigCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iOSAppConfigSaveReq** | [**IOSAppConfigSaveReq**](IOSAppConfigSaveReq.md)|  | 

### Return type

[**IOSAppConfigSaveRsp**](IOSAppConfigSaveRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iOSAppConfigDelete**
> GenericRsp iOSAppConfigDelete(iosAppConfigID, iOSAppConfigDeleteReq)



Deletes an iOS App Config

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

final api_instance = IOSAppConfigApi();
final iosAppConfigID = ios-abc123; // String | iOS App Config ID from create
final iOSAppConfigDeleteReq = IOSAppConfigDeleteReq(); // IOSAppConfigDeleteReq | 

try {
    final result = api_instance.iOSAppConfigDelete(iosAppConfigID, iOSAppConfigDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling IOSAppConfigApi->iOSAppConfigDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iosAppConfigID** | **String**| iOS App Config ID from create | 
 **iOSAppConfigDeleteReq** | [**IOSAppConfigDeleteReq**](IOSAppConfigDeleteReq.md)|  | [optional] 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iOSAppConfigGet**
> IOSAppConfigListRsp iOSAppConfigGet()



Lists iOS App Configs for a project

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

final api_instance = IOSAppConfigApi();

try {
    final result = api_instance.iOSAppConfigGet();
    print(result);
} catch (e) {
    print('Exception when calling IOSAppConfigApi->iOSAppConfigGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IOSAppConfigListRsp**](IOSAppConfigListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iOSAppConfigPut**
> IOSAppConfigUpdateRsp iOSAppConfigPut(iosAppConfigID, iOSAppConfigUpdateReq)



Updates an iOS app config by id

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

final api_instance = IOSAppConfigApi();
final iosAppConfigID = ios-abc123; // String | ID from iOS config create
final iOSAppConfigUpdateReq = IOSAppConfigUpdateReq(); // IOSAppConfigUpdateReq | 

try {
    final result = api_instance.iOSAppConfigPut(iosAppConfigID, iOSAppConfigUpdateReq);
    print(result);
} catch (e) {
    print('Exception when calling IOSAppConfigApi->iOSAppConfigPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iosAppConfigID** | **String**| ID from iOS config create | 
 **iOSAppConfigUpdateReq** | [**IOSAppConfigUpdateReq**](IOSAppConfigUpdateReq.md)|  | [optional] 

### Return type

[**IOSAppConfigUpdateRsp**](IOSAppConfigUpdateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

