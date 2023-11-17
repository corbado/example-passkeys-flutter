# backend_api_public.api.EmailOTPApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailCodeGet**](EmailOTPApi.md#emailcodeget) | **GET** /v1/emailCodes/{emailCodeID} | 
[**emailCodeSend**](EmailOTPApi.md#emailcodesend) | **POST** /v1/emailCodes | 
[**emailCodeValidate**](EmailOTPApi.md#emailcodevalidate) | **PUT** /v1/emailCodes/{emailCodeID}/validate | 


# **emailCodeGet**
> EmailCodeGetRsp emailCodeGet(emailCodeID)



Get an email OTP only one time after confirmed

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

final api_instance = EmailOTPApi();
final emailCodeID = emailCodeID_example; // String | ID of email OTP

try {
    final result = api_instance.emailCodeGet(emailCodeID);
    print(result);
} catch (e) {
    print('Exception when calling EmailOTPApi->emailCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCodeID** | **String**| ID of email OTP | 

### Return type

[**EmailCodeGetRsp**](EmailCodeGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCodeSend**
> EmailCodeSendRsp emailCodeSend(emailCodeSendReq)



Creates email code and sends it to given email address

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

final api_instance = EmailOTPApi();
final emailCodeSendReq = EmailCodeSendReq(); // EmailCodeSendReq | 

try {
    final result = api_instance.emailCodeSend(emailCodeSendReq);
    print(result);
} catch (e) {
    print('Exception when calling EmailOTPApi->emailCodeSend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCodeSendReq** | [**EmailCodeSendReq**](EmailCodeSendReq.md)|  | 

### Return type

[**EmailCodeSendRsp**](EmailCodeSendRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCodeValidate**
> EmailCodeValidateRsp emailCodeValidate(emailCodeID, emailCodeValidateReq)



Validates email code

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

final api_instance = EmailOTPApi();
final emailCodeID = emailCodeID_example; // String | ID of email OTP
final emailCodeValidateReq = EmailCodeValidateReq(); // EmailCodeValidateReq | 

try {
    final result = api_instance.emailCodeValidate(emailCodeID, emailCodeValidateReq);
    print(result);
} catch (e) {
    print('Exception when calling EmailOTPApi->emailCodeValidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCodeID** | **String**| ID of email OTP | 
 **emailCodeValidateReq** | [**EmailCodeValidateReq**](EmailCodeValidateReq.md)|  | 

### Return type

[**EmailCodeValidateRsp**](EmailCodeValidateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

