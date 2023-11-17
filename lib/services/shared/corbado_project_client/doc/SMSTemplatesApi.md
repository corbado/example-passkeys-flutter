# backend_api_public.api.SMSTemplatesApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsTemplateCreate**](SMSTemplatesApi.md#smstemplatecreate) | **POST** /v1/smsTemplates | 
[**smsTemplateDelete**](SMSTemplatesApi.md#smstemplatedelete) | **DELETE** /v1/smsTemplates/{smsTemplateID} | 


# **smsTemplateCreate**
> SmsTemplateCreateRsp smsTemplateCreate(smsTemplateCreateReq)



Creates a new SMS template

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = SMSTemplatesApi();
final smsTemplateCreateReq = SmsTemplateCreateReq(); // SmsTemplateCreateReq | 

try {
    final result = api_instance.smsTemplateCreate(smsTemplateCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling SMSTemplatesApi->smsTemplateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsTemplateCreateReq** | [**SmsTemplateCreateReq**](SmsTemplateCreateReq.md)|  | 

### Return type

[**SmsTemplateCreateRsp**](SmsTemplateCreateRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsTemplateDelete**
> GenericRsp smsTemplateDelete(smsTemplateID, smsTemplateDeleteReq)



Deletes an SMS template

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = SMSTemplatesApi();
final smsTemplateID = smsTemplateID_example; // String | ID of SMS template
final smsTemplateDeleteReq = SmsTemplateDeleteReq(); // SmsTemplateDeleteReq | 

try {
    final result = api_instance.smsTemplateDelete(smsTemplateID, smsTemplateDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling SMSTemplatesApi->smsTemplateDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsTemplateID** | **String**| ID of SMS template | 
 **smsTemplateDeleteReq** | [**SmsTemplateDeleteReq**](SmsTemplateDeleteReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

