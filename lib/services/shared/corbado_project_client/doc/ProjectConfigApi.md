# backend_api_public.api.ProjectConfigApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectActivate**](ProjectConfigApi.md#projectactivate) | **PUT** /v1/projects/activate | 
[**projectConfigGet**](ProjectConfigApi.md#projectconfigget) | **GET** /v1/projectConfig | 
[**projectConfigSave**](ProjectConfigApi.md#projectconfigsave) | **POST** /v1/projectConfig | 
[**projectConfigWebhookTest**](ProjectConfigApi.md#projectconfigwebhooktest) | **PUT** /v1/projectConfig/testWebhook | 


# **projectActivate**
> GenericRsp projectActivate(emptyReq)



Activates the project

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

final api_instance = ProjectConfigApi();
final emptyReq = EmptyReq(); // EmptyReq | 

try {
    final result = api_instance.projectActivate(emptyReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectConfigApi->projectActivate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emptyReq** | [**EmptyReq**](EmptyReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectConfigGet**
> ProjectConfigGetRsp projectConfigGet()



Retrieves project config by projectID inferred from authentication

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

final api_instance = ProjectConfigApi();

try {
    final result = api_instance.projectConfigGet();
    print(result);
} catch (e) {
    print('Exception when calling ProjectConfigApi->projectConfigGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProjectConfigGetRsp**](ProjectConfigGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectConfigSave**
> GenericRsp projectConfigSave(projectConfigSaveReq)



Saves project config

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

final api_instance = ProjectConfigApi();
final projectConfigSaveReq = ProjectConfigSaveReq(); // ProjectConfigSaveReq | 

try {
    final result = api_instance.projectConfigSave(projectConfigSaveReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectConfigApi->projectConfigSave: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectConfigSaveReq** | [**ProjectConfigSaveReq**](ProjectConfigSaveReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectConfigWebhookTest**
> ProjectConfigWebhookTestRsp projectConfigWebhookTest(projectConfigWebhookTestReq)



Tests webhook backend

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

final api_instance = ProjectConfigApi();
final projectConfigWebhookTestReq = ProjectConfigWebhookTestReq(); // ProjectConfigWebhookTestReq | 

try {
    final result = api_instance.projectConfigWebhookTest(projectConfigWebhookTestReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectConfigApi->projectConfigWebhookTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectConfigWebhookTestReq** | [**ProjectConfigWebhookTestReq**](ProjectConfigWebhookTestReq.md)|  | 

### Return type

[**ProjectConfigWebhookTestRsp**](ProjectConfigWebhookTestRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

