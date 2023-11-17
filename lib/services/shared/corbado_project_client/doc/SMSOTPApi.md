# backend_api_public.api.SMSOTPApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsCodeSend**](SMSOTPApi.md#smscodesend) | **POST** /v1/smsCodes | 
[**smsCodeValidate**](SMSOTPApi.md#smscodevalidate) | **PUT** /v1/smsCodes/{smsCodeID}/validate | 


# **smsCodeSend**
> SmsCodeSendRsp smsCodeSend(smsCodeSendReq)



Creates SMS OTP and sends it to given phone number

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

final api_instance = SMSOTPApi();
final smsCodeSendReq = SmsCodeSendReq(); // SmsCodeSendReq | 

try {
    final result = api_instance.smsCodeSend(smsCodeSendReq);
    print(result);
} catch (e) {
    print('Exception when calling SMSOTPApi->smsCodeSend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsCodeSendReq** | [**SmsCodeSendReq**](SmsCodeSendReq.md)|  | 

### Return type

[**SmsCodeSendRsp**](SmsCodeSendRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsCodeValidate**
> SmsCodeValidateRsp smsCodeValidate(smsCodeID, smsCodeValidateReq)



Validates SMS OTP

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

final api_instance = SMSOTPApi();
final smsCodeID = smsCodeID_example; // String | ID of SMS OTP
final smsCodeValidateReq = SmsCodeValidateReq(); // SmsCodeValidateReq | 

try {
    final result = api_instance.smsCodeValidate(smsCodeID, smsCodeValidateReq);
    print(result);
} catch (e) {
    print('Exception when calling SMSOTPApi->smsCodeValidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsCodeID** | **String**| ID of SMS OTP | 
 **smsCodeValidateReq** | [**SmsCodeValidateReq**](SmsCodeValidateReq.md)|  | 

### Return type

[**SmsCodeValidateRsp**](SmsCodeValidateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

