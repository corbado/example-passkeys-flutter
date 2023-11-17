# backend_api_public.api.ValidationApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**originAllowed**](ValidationApi.md#originallowed) | **PUT** /v1/origin/allowed | 
[**validateEmail**](ValidationApi.md#validateemail) | **PUT** /v1/validate/email | 
[**validatePhoneNumber**](ValidationApi.md#validatephonenumber) | **PUT** /v1/validate/phoneNumber | 


# **originAllowed**
> OriginAllowedRsp originAllowed(originAllowedReq)



Indicates in the given origin is allowed to this project

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

final api_instance = ValidationApi();
final originAllowedReq = OriginAllowedReq(); // OriginAllowedReq | 

try {
    final result = api_instance.originAllowed(originAllowedReq);
    print(result);
} catch (e) {
    print('Exception when calling ValidationApi->originAllowed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **originAllowedReq** | [**OriginAllowedReq**](OriginAllowedReq.md)|  | [optional] 

### Return type

[**OriginAllowedRsp**](OriginAllowedRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateEmail**
> ValidateEmailRsp validateEmail(validateEmailReq)



Validates email

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

final api_instance = ValidationApi();
final validateEmailReq = ValidateEmailReq(); // ValidateEmailReq | 

try {
    final result = api_instance.validateEmail(validateEmailReq);
    print(result);
} catch (e) {
    print('Exception when calling ValidationApi->validateEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateEmailReq** | [**ValidateEmailReq**](ValidateEmailReq.md)|  | 

### Return type

[**ValidateEmailRsp**](ValidateEmailRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validatePhoneNumber**
> ValidatePhoneNumberRsp validatePhoneNumber(validatePhoneNumberReq)



Validates phone number

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

final api_instance = ValidationApi();
final validatePhoneNumberReq = ValidatePhoneNumberReq(); // ValidatePhoneNumberReq | 

try {
    final result = api_instance.validatePhoneNumber(validatePhoneNumberReq);
    print(result);
} catch (e) {
    print('Exception when calling ValidationApi->validatePhoneNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatePhoneNumberReq** | [**ValidatePhoneNumberReq**](ValidatePhoneNumberReq.md)|  | 

### Return type

[**ValidatePhoneNumberRsp**](ValidatePhoneNumberRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

