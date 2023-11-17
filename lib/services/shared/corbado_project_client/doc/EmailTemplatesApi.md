# backend_api_public.api.EmailTemplatesApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailTemplateCreate**](EmailTemplatesApi.md#emailtemplatecreate) | **POST** /v1/emailTemplates | 
[**emailTemplateDelete**](EmailTemplatesApi.md#emailtemplatedelete) | **DELETE** /v1/emailTemplates/{emailTemplateID} | 


# **emailTemplateCreate**
> EmailTemplateCreateRsp emailTemplateCreate(emailTemplateCreateReq)



Creates a new email template

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = EmailTemplatesApi();
final emailTemplateCreateReq = EmailTemplateCreateReq(); // EmailTemplateCreateReq | 

try {
    final result = api_instance.emailTemplateCreate(emailTemplateCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling EmailTemplatesApi->emailTemplateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateCreateReq** | [**EmailTemplateCreateReq**](EmailTemplateCreateReq.md)|  | 

### Return type

[**EmailTemplateCreateRsp**](EmailTemplateCreateRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailTemplateDelete**
> GenericRsp emailTemplateDelete(emailTemplateID, emailTemplateDeleteReq)



Deletes an email template

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = EmailTemplatesApi();
final emailTemplateID = emailTemplateID_example; // String | ID of email template
final emailTemplateDeleteReq = EmailTemplateDeleteReq(); // EmailTemplateDeleteReq | 

try {
    final result = api_instance.emailTemplateDelete(emailTemplateID, emailTemplateDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling EmailTemplatesApi->emailTemplateDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateID** | **String**| ID of email template | 
 **emailTemplateDeleteReq** | [**EmailTemplateDeleteReq**](EmailTemplateDeleteReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

