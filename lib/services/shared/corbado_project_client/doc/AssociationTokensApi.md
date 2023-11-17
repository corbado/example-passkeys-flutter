# backend_api_public.api.AssociationTokensApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**associationTokenCreate**](AssociationTokensApi.md#associationtokencreate) | **POST** /v1/associationTokens | 


# **associationTokenCreate**
> AssociationTokenCreateRsp associationTokenCreate(associationTokenCreateReq)



Creates a new association token

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

final api_instance = AssociationTokensApi();
final associationTokenCreateReq = AssociationTokenCreateReq(); // AssociationTokenCreateReq | 

try {
    final result = api_instance.associationTokenCreate(associationTokenCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling AssociationTokensApi->associationTokenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTokenCreateReq** | [**AssociationTokenCreateReq**](AssociationTokenCreateReq.md)|  | 

### Return type

[**AssociationTokenCreateRsp**](AssociationTokenCreateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

