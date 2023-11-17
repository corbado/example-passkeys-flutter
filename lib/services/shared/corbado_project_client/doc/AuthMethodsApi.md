# backend_api_public.api.AuthMethodsApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authMethodsList**](AuthMethodsApi.md#authmethodslist) | **POST** /v1/authMethods | 


# **authMethodsList**
> AuthMethodsListRsp authMethodsList(authMethodsListReq)



Retrieves possible authentication methods for provided username

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

final api_instance = AuthMethodsApi();
final authMethodsListReq = AuthMethodsListReq(); // AuthMethodsListReq | 

try {
    final result = api_instance.authMethodsList(authMethodsListReq);
    print(result);
} catch (e) {
    print('Exception when calling AuthMethodsApi->authMethodsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authMethodsListReq** | [**AuthMethodsListReq**](AuthMethodsListReq.md)|  | 

### Return type

[**AuthMethodsListRsp**](AuthMethodsListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

