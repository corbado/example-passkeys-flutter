# backend_api_public.api.APISecretsApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectSecretCreate**](APISecretsApi.md#projectsecretcreate) | **POST** /v1/projectSecrets | 
[**projectSecretDelete**](APISecretsApi.md#projectsecretdelete) | **DELETE** /v1/projectSecrets/{secretID} | 
[**projectSecretList**](APISecretsApi.md#projectsecretlist) | **GET** /v1/projectSecrets | 


# **projectSecretCreate**
> ProjectSecretCreateRsp projectSecretCreate(projectSecretCreateReq)



Creates an API secret

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

final api_instance = APISecretsApi();
final projectSecretCreateReq = ProjectSecretCreateReq(); // ProjectSecretCreateReq | 

try {
    final result = api_instance.projectSecretCreate(projectSecretCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling APISecretsApi->projectSecretCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectSecretCreateReq** | [**ProjectSecretCreateReq**](ProjectSecretCreateReq.md)|  | [optional] 

### Return type

[**ProjectSecretCreateRsp**](ProjectSecretCreateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectSecretDelete**
> GenericRsp projectSecretDelete(secretID, projectSecretDeleteReq)



Deletes API secret

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

final api_instance = APISecretsApi();
final secretID = pse-abc123; // String | Secret ID from create
final projectSecretDeleteReq = ProjectSecretDeleteReq(); // ProjectSecretDeleteReq | 

try {
    final result = api_instance.projectSecretDelete(secretID, projectSecretDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling APISecretsApi->projectSecretDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secretID** | **String**| Secret ID from create | 
 **projectSecretDeleteReq** | [**ProjectSecretDeleteReq**](ProjectSecretDeleteReq.md)|  | [optional] 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectSecretList**
> ProjectSecretListRsp projectSecretList()



Lists API secrets

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

final api_instance = APISecretsApi();

try {
    final result = api_instance.projectSecretList();
    print(result);
} catch (e) {
    print('Exception when calling APISecretsApi->projectSecretList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProjectSecretListRsp**](ProjectSecretListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

