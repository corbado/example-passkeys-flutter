# backend_api_public.api.AuthTokensApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authTokenValidate**](AuthTokensApi.md#authtokenvalidate) | **POST** /v1/authTokens/validate | 
[**sessionTokenCreate**](AuthTokensApi.md#sessiontokencreate) | **POST** /v1/sessions | 
[**sessionTokenVerify**](AuthTokensApi.md#sessiontokenverify) | **POST** /v1/sessions/verify | 


# **authTokenValidate**
> AuthTokenValidateRsp authTokenValidate(authTokenValidateReq)



Validates auth token and returns attached user data

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = AuthTokensApi();
final authTokenValidateReq = AuthTokenValidateReq(); // AuthTokenValidateReq | 

try {
    final result = api_instance.authTokenValidate(authTokenValidateReq);
    print(result);
} catch (e) {
    print('Exception when calling AuthTokensApi->authTokenValidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authTokenValidateReq** | [**AuthTokenValidateReq**](AuthTokenValidateReq.md)|  | 

### Return type

[**AuthTokenValidateRsp**](AuthTokenValidateRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenCreate**
> SessionTokenCreateRsp sessionTokenCreate(sessionTokenCreateReq)



Creates a new session token for provided user data

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = AuthTokensApi();
final sessionTokenCreateReq = SessionTokenCreateReq(); // SessionTokenCreateReq | 

try {
    final result = api_instance.sessionTokenCreate(sessionTokenCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling AuthTokensApi->sessionTokenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenCreateReq** | [**SessionTokenCreateReq**](SessionTokenCreateReq.md)|  | 

### Return type

[**SessionTokenCreateRsp**](SessionTokenCreateRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenVerify**
> SessionTokenVerifyRsp sessionTokenVerify(sessionTokenVerifyReq)



Verifies session token and returns attached user data

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = AuthTokensApi();
final sessionTokenVerifyReq = SessionTokenVerifyReq(); // SessionTokenVerifyReq | 

try {
    final result = api_instance.sessionTokenVerify(sessionTokenVerifyReq);
    print(result);
} catch (e) {
    print('Exception when calling AuthTokensApi->sessionTokenVerify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenVerifyReq** | [**SessionTokenVerifyReq**](SessionTokenVerifyReq.md)|  | 

### Return type

[**SessionTokenVerifyRsp**](SessionTokenVerifyRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

