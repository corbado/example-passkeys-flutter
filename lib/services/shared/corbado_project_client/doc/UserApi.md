# backend_api_public.api.UserApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAuthLogList**](UserApi.md#userauthloglist) | **GET** /v1/userauthlogs | 
[**userCreate**](UserApi.md#usercreate) | **POST** /v1/users | 
[**userCustomLoginIdentifierCreate**](UserApi.md#usercustomloginidentifiercreate) | **POST** /v1/users/{userID}/customLoginIdentifiers | 
[**userCustomLoginIdentifierDelete**](UserApi.md#usercustomloginidentifierdelete) | **DELETE** /v1/users/{userID}/customLoginIdentifiers/{customLoginIdentifierID} | 
[**userCustomLoginIdentifierGet**](UserApi.md#usercustomloginidentifierget) | **GET** /v1/users/{userID}/customLoginIdentifiers/{customLoginIdentifierID} | 
[**userDelete**](UserApi.md#userdelete) | **DELETE** /v1/users/{userID} | 
[**userDeviceList**](UserApi.md#userdevicelist) | **GET** /v1/users/{userID}/devices | 
[**userEmailCreate**](UserApi.md#useremailcreate) | **POST** /v1/users/{userID}/emails | 
[**userEmailDelete**](UserApi.md#useremaildelete) | **DELETE** /v1/users/{userID}/emails/{emailID} | 
[**userEmailGet**](UserApi.md#useremailget) | **GET** /v1/users/{userID}/emails/{emailID} | 
[**userGet**](UserApi.md#userget) | **GET** /v1/users/{userID} | 
[**userList**](UserApi.md#userlist) | **GET** /v1/users | 
[**userPhoneNumberCreate**](UserApi.md#userphonenumbercreate) | **POST** /v1/users/{userID}/phoneNumbers | 
[**userPhoneNumberDelete**](UserApi.md#userphonenumberdelete) | **DELETE** /v1/users/{userID}/phoneNumbers/{phoneNumberID} | 
[**userPhoneNumberGet**](UserApi.md#userphonenumberget) | **GET** /v1/users/{userID}/phoneNumbers/{phoneNumberID} | 
[**userStatsList**](UserApi.md#userstatslist) | **GET** /v1/users/stats | 
[**userUpdate**](UserApi.md#userupdate) | **PUT** /v1/users/{userID} | 


# **userAuthLogList**
> UserAuthLogListRsp userAuthLogList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists user auth log

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

final api_instance = UserApi();
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.userAuthLogList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userAuthLogList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 
 **sort** | **String**| Field sorting | [optional] 
 **filterLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Field filtering | [optional] [default to const []]
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**UserAuthLogListRsp**](UserAuthLogListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCreate**
> UserCreateRsp userCreate(userCreateReq)



Creates a new user

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

final api_instance = UserApi();
final userCreateReq = UserCreateReq(); // UserCreateReq | 

try {
    final result = api_instance.userCreate(userCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreateReq** | [**UserCreateReq**](UserCreateReq.md)|  | 

### Return type

[**UserCreateRsp**](UserCreateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCustomLoginIdentifierCreate**
> UserCustomLoginIdentifierCreateRsp userCustomLoginIdentifierCreate(userID, userCustomLoginIdentifierCreateReq)



Add a custom login identifier to an existing user

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final userCustomLoginIdentifierCreateReq = UserCustomLoginIdentifierCreateReq(); // UserCustomLoginIdentifierCreateReq | 

try {
    final result = api_instance.userCustomLoginIdentifierCreate(userID, userCustomLoginIdentifierCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userCustomLoginIdentifierCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **userCustomLoginIdentifierCreateReq** | [**UserCustomLoginIdentifierCreateReq**](UserCustomLoginIdentifierCreateReq.md)|  | 

### Return type

[**UserCustomLoginIdentifierCreateRsp**](UserCustomLoginIdentifierCreateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCustomLoginIdentifierDelete**
> GenericRsp userCustomLoginIdentifierDelete(userID, customLoginIdentifierID, userCustomLoginIdentifierDeleteReq)



Delete a user's custom login identifier

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final customLoginIdentifierID = customLoginIdentifierID_example; // String | ID of custom login identifier
final userCustomLoginIdentifierDeleteReq = UserCustomLoginIdentifierDeleteReq(); // UserCustomLoginIdentifierDeleteReq | 

try {
    final result = api_instance.userCustomLoginIdentifierDelete(userID, customLoginIdentifierID, userCustomLoginIdentifierDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userCustomLoginIdentifierDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **customLoginIdentifierID** | **String**| ID of custom login identifier | 
 **userCustomLoginIdentifierDeleteReq** | [**UserCustomLoginIdentifierDeleteReq**](UserCustomLoginIdentifierDeleteReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCustomLoginIdentifierGet**
> UserCustomLoginIdentifierGetRsp userCustomLoginIdentifierGet(userID, customLoginIdentifierID, remoteAddress, userAgent)



Get a user's custom login identifier

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final customLoginIdentifierID = customLoginIdentifierID_example; // String | ID of custom login identifier
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent

try {
    final result = api_instance.userCustomLoginIdentifierGet(userID, customLoginIdentifierID, remoteAddress, userAgent);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userCustomLoginIdentifierGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **customLoginIdentifierID** | **String**| ID of custom login identifier | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 

### Return type

[**UserCustomLoginIdentifierGetRsp**](UserCustomLoginIdentifierGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDelete**
> GenericRsp userDelete(userID, userDeleteReq)



Deletes a user

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final userDeleteReq = UserDeleteReq(); // UserDeleteReq | 

try {
    final result = api_instance.userDelete(userID, userDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **userDeleteReq** | [**UserDeleteReq**](UserDeleteReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeviceList**
> UserDeviceListRsp userDeviceList(userID, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Provides all register devices for given user

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.userDeviceList(userID, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userDeviceList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 
 **sort** | **String**| Field sorting | [optional] 
 **filterLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Field filtering | [optional] [default to const []]
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**UserDeviceListRsp**](UserDeviceListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEmailCreate**
> UserEmailCreateRsp userEmailCreate(userID, userEmailCreateReq)



Add an email to an existing user

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final userEmailCreateReq = UserEmailCreateReq(); // UserEmailCreateReq | 

try {
    final result = api_instance.userEmailCreate(userID, userEmailCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userEmailCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **userEmailCreateReq** | [**UserEmailCreateReq**](UserEmailCreateReq.md)|  | 

### Return type

[**UserEmailCreateRsp**](UserEmailCreateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEmailDelete**
> GenericRsp userEmailDelete(userID, emailID, userEmailDeleteReq)



Delete a user's email

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final emailID = emailID_example; // String | ID of email
final userEmailDeleteReq = UserEmailDeleteReq(); // UserEmailDeleteReq | 

try {
    final result = api_instance.userEmailDelete(userID, emailID, userEmailDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userEmailDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **emailID** | **String**| ID of email | 
 **userEmailDeleteReq** | [**UserEmailDeleteReq**](UserEmailDeleteReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEmailGet**
> UserEmailGetRsp userEmailGet(userID, emailID, remoteAddress, userAgent)



Get a user's email

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final emailID = emailID_example; // String | ID of email
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent

try {
    final result = api_instance.userEmailGet(userID, emailID, remoteAddress, userAgent);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userEmailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **emailID** | **String**| ID of email | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 

### Return type

[**UserEmailGetRsp**](UserEmailGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGet**
> UserGetRsp userGet(userID, remoteAddress, userAgent)



Get a user by ID

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent

try {
    final result = api_instance.userGet(userID, remoteAddress, userAgent);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 

### Return type

[**UserGetRsp**](UserGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userList**
> UserListRsp userList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists project users

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

final api_instance = UserApi();
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.userList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 
 **sort** | **String**| Field sorting | [optional] 
 **filterLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Field filtering | [optional] [default to const []]
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**UserListRsp**](UserListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPhoneNumberCreate**
> UserPhoneNumberCreateRsp userPhoneNumberCreate(userID, userPhoneNumberCreateReq)



Add a phone number to an existing user

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final userPhoneNumberCreateReq = UserPhoneNumberCreateReq(); // UserPhoneNumberCreateReq | 

try {
    final result = api_instance.userPhoneNumberCreate(userID, userPhoneNumberCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userPhoneNumberCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **userPhoneNumberCreateReq** | [**UserPhoneNumberCreateReq**](UserPhoneNumberCreateReq.md)|  | 

### Return type

[**UserPhoneNumberCreateRsp**](UserPhoneNumberCreateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPhoneNumberDelete**
> GenericRsp userPhoneNumberDelete(userID, phoneNumberID, userPhoneNumberDeleteReq)



Delete a user's phone number

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final phoneNumberID = phoneNumberID_example; // String | ID of phone number
final userPhoneNumberDeleteReq = UserPhoneNumberDeleteReq(); // UserPhoneNumberDeleteReq | 

try {
    final result = api_instance.userPhoneNumberDelete(userID, phoneNumberID, userPhoneNumberDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userPhoneNumberDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **phoneNumberID** | **String**| ID of phone number | 
 **userPhoneNumberDeleteReq** | [**UserPhoneNumberDeleteReq**](UserPhoneNumberDeleteReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPhoneNumberGet**
> UserPhoneNumberGetRsp userPhoneNumberGet(userID, phoneNumberID, remoteAddress, userAgent)



Get a user's phone number

### Example
```dart
import 'package:backend_api_public/api.dart';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final phoneNumberID = phoneNumberID_example; // String | ID of phone number
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent

try {
    final result = api_instance.userPhoneNumberGet(userID, phoneNumberID, remoteAddress, userAgent);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userPhoneNumberGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **phoneNumberID** | **String**| ID of phone number | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 

### Return type

[**UserPhoneNumberGetRsp**](UserPhoneNumberGetRsp.md)

### Authorization

[projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userStatsList**
> UserStatsListRsp userStatsList(granularity, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Provides aggregated user stats for project

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

final api_instance = UserApi();
final granularity = granularity_example; // String | Data granularity
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.userStatsList(granularity, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userStatsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **String**| Data granularity | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 
 **sort** | **String**| Field sorting | [optional] 
 **filterLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Field filtering | [optional] [default to const []]
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**UserStatsListRsp**](UserStatsListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpdate**
> UserUpdateRsp userUpdate(userID, userUpdateReq)



Updates a user

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

final api_instance = UserApi();
final userID = userID_example; // String | ID of user
final userUpdateReq = UserUpdateReq(); // UserUpdateReq | 

try {
    final result = api_instance.userUpdate(userID, userUpdateReq);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **userUpdateReq** | [**UserUpdateReq**](UserUpdateReq.md)|  | 

### Return type

[**UserUpdateRsp**](UserUpdateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

