# backend_api_public.api.EmailMagicLinksApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailLinkDelete**](EmailMagicLinksApi.md#emaillinkdelete) | **DELETE** /v1/emailLinks/{emailLinkID} | 
[**emailLinkGet**](EmailMagicLinksApi.md#emaillinkget) | **GET** /v1/emailLinks/{emailLinkID} | 
[**emailLinkSend**](EmailMagicLinksApi.md#emaillinksend) | **POST** /v1/emailLinks | 
[**emailLinkValidate**](EmailMagicLinksApi.md#emaillinkvalidate) | **PUT** /v1/emailLinks/{emailLinkID}/validate | 


# **emailLinkDelete**
> EmailLinkValidateRsp emailLinkDelete(emailLinkID, emailLinksDeleteReq)



Deletes an email magic link

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

final api_instance = EmailMagicLinksApi();
final emailLinkID = emailLinkID_example; // String | ID of email magic link
final emailLinksDeleteReq = EmailLinksDeleteReq(); // EmailLinksDeleteReq | 

try {
    final result = api_instance.emailLinkDelete(emailLinkID, emailLinksDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling EmailMagicLinksApi->emailLinkDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailLinkID** | **String**| ID of email magic link | 
 **emailLinksDeleteReq** | [**EmailLinksDeleteReq**](EmailLinksDeleteReq.md)|  | [optional] 

### Return type

[**EmailLinkValidateRsp**](EmailLinkValidateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailLinkGet**
> EmailLinkGetRsp emailLinkGet(emailLinkID)



Get an email magic link only one time after confirmed

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

final api_instance = EmailMagicLinksApi();
final emailLinkID = emailLinkID_example; // String | ID of email magic link

try {
    final result = api_instance.emailLinkGet(emailLinkID);
    print(result);
} catch (e) {
    print('Exception when calling EmailMagicLinksApi->emailLinkGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailLinkID** | **String**| ID of email magic link | 

### Return type

[**EmailLinkGetRsp**](EmailLinkGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailLinkSend**
> EmailLinkSendRsp emailLinkSend(emailLinkSendReq)



Creates email magic link and sends it to given email address

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

final api_instance = EmailMagicLinksApi();
final emailLinkSendReq = EmailLinkSendReq(); // EmailLinkSendReq | 

try {
    final result = api_instance.emailLinkSend(emailLinkSendReq);
    print(result);
} catch (e) {
    print('Exception when calling EmailMagicLinksApi->emailLinkSend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailLinkSendReq** | [**EmailLinkSendReq**](EmailLinkSendReq.md)|  | 

### Return type

[**EmailLinkSendRsp**](EmailLinkSendRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailLinkValidate**
> EmailLinkValidateRsp emailLinkValidate(emailLinkID, emailLinksValidateReq)



Validates email magic link token

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

final api_instance = EmailMagicLinksApi();
final emailLinkID = emailLinkID_example; // String | ID of email magic link
final emailLinksValidateReq = EmailLinksValidateReq(); // EmailLinksValidateReq | 

try {
    final result = api_instance.emailLinkValidate(emailLinkID, emailLinksValidateReq);
    print(result);
} catch (e) {
    print('Exception when calling EmailMagicLinksApi->emailLinkValidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailLinkID** | **String**| ID of email magic link | 
 **emailLinksValidateReq** | [**EmailLinksValidateReq**](EmailLinksValidateReq.md)|  | 

### Return type

[**EmailLinkValidateRsp**](EmailLinkValidateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

