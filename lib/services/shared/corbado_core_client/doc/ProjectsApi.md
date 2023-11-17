# core_api.api.ProjectsApi

## Load the API package
```dart
import 'package:core_api/api.dart';
```

All URIs are relative to *https://api.eu-1.corbado.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**automatedProjectCreate**](ProjectsApi.md#automatedprojectcreate) | **POST** /v1/automated/projects | 
[**projectCreate**](ProjectsApi.md#projectcreate) | **POST** /v1/projects | 
[**projectDelete**](ProjectsApi.md#projectdelete) | **DELETE** /v1/projects | 
[**projectDeveloperInfoCreate**](ProjectsApi.md#projectdeveloperinfocreate) | **POST** /v1/projects/{projectID}/developerInfo | 
[**projectDeveloperInfoGet**](ProjectsApi.md#projectdeveloperinfoget) | **GET** /v1/projects/{projectID}/developerInfo | 
[**projectInvite**](ProjectsApi.md#projectinvite) | **POST** /v1/projects/{projectID}/invites | 
[**projectInviteAccept**](ProjectsApi.md#projectinviteaccept) | **POST** /v1/projects/invites/accept | 
[**projectInviteDelete**](ProjectsApi.md#projectinvitedelete) | **DELETE** /v1/projects/{projectID}/invites/{inviteID} | 
[**projectInviteList**](ProjectsApi.md#projectinvitelist) | **GET** /v1/projects/{projectID}/invites | 
[**projectInviteResend**](ProjectsApi.md#projectinviteresend) | **PUT** /v1/projects/{projectID}/invites | 
[**projectList**](ProjectsApi.md#projectlist) | **GET** /v1/projects | 
[**projectPermissionList**](ProjectsApi.md#projectpermissionlist) | **GET** /v1/projects/{projectID}/permissions | 
[**projectUpdate**](ProjectsApi.md#projectupdate) | **PUT** /v1/projects | 


# **automatedProjectCreate**
> AutomatedProjectCreateRsp automatedProjectCreate(automatedProjectCreateReq)



Creates a new project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final automatedProjectCreateReq = AutomatedProjectCreateReq(); // AutomatedProjectCreateReq | 

try {
    final result = api_instance.automatedProjectCreate(automatedProjectCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->automatedProjectCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **automatedProjectCreateReq** | [**AutomatedProjectCreateReq**](AutomatedProjectCreateReq.md)|  | 

### Return type

[**AutomatedProjectCreateRsp**](AutomatedProjectCreateRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectCreate**
> ProjectCreateRsp projectCreate(projectCreateReq)



Creates a new project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectCreateReq = ProjectCreateReq(); // ProjectCreateReq | 

try {
    final result = api_instance.projectCreate(projectCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectCreateReq** | [**ProjectCreateReq**](ProjectCreateReq.md)|  | 

### Return type

[**ProjectCreateRsp**](ProjectCreateRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectDelete**
> GenericRsp projectDelete(projectDeleteReq)



Deletes an existing project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectDeleteReq = ProjectDeleteReq(); // ProjectDeleteReq | 

try {
    final result = api_instance.projectDelete(projectDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectDeleteReq** | [**ProjectDeleteReq**](ProjectDeleteReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectDeveloperInfoCreate**
> GenericRsp projectDeveloperInfoCreate(projectID, projectDeveloperInfoCreateReq)



Creates a new developer info for a project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectID = projectID_example; // String | ID of project
final projectDeveloperInfoCreateReq = ProjectDeveloperInfoCreateReq(); // ProjectDeveloperInfoCreateReq | 

try {
    final result = api_instance.projectDeveloperInfoCreate(projectID, projectDeveloperInfoCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectDeveloperInfoCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **String**| ID of project | 
 **projectDeveloperInfoCreateReq** | [**ProjectDeveloperInfoCreateReq**](ProjectDeveloperInfoCreateReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectDeveloperInfoGet**
> ProjectDeveloperInfoGetRsp projectDeveloperInfoGet(projectID)



Get current developer info for a project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectID = projectID_example; // String | ID of project

try {
    final result = api_instance.projectDeveloperInfoGet(projectID);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectDeveloperInfoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **String**| ID of project | 

### Return type

[**ProjectDeveloperInfoGetRsp**](ProjectDeveloperInfoGetRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectInvite**
> ProjectInviteRsp projectInvite(projectID, projectInviteReq)



Invites a new user to an existing project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectID = projectID_example; // String | ID of project
final projectInviteReq = ProjectInviteReq(); // ProjectInviteReq | 

try {
    final result = api_instance.projectInvite(projectID, projectInviteReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **String**| ID of project | 
 **projectInviteReq** | [**ProjectInviteReq**](ProjectInviteReq.md)|  | 

### Return type

[**ProjectInviteRsp**](ProjectInviteRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectInviteAccept**
> ProjectInviteAcceptRsp projectInviteAccept(projectInviteAcceptReq)



Accepts an invitation to an existing project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectInviteAcceptReq = ProjectInviteAcceptReq(); // ProjectInviteAcceptReq | 

try {
    final result = api_instance.projectInviteAccept(projectInviteAcceptReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectInviteAccept: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectInviteAcceptReq** | [**ProjectInviteAcceptReq**](ProjectInviteAcceptReq.md)|  | 

### Return type

[**ProjectInviteAcceptRsp**](ProjectInviteAcceptRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectInviteDelete**
> GenericRsp projectInviteDelete(projectID, inviteID, projectInviteDeleteReq)



Deletes project invite

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectID = projectID_example; // String | ID of project
final inviteID = inv-123; // String | ID of the project invitation
final projectInviteDeleteReq = ProjectInviteDeleteReq(); // ProjectInviteDeleteReq | 

try {
    final result = api_instance.projectInviteDelete(projectID, inviteID, projectInviteDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectInviteDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **String**| ID of project | 
 **inviteID** | **String**| ID of the project invitation | 
 **projectInviteDeleteReq** | [**ProjectInviteDeleteReq**](ProjectInviteDeleteReq.md)|  | [optional] 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectInviteList**
> ProjectInviteListRsp projectInviteList(projectID, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists all open invitations for a given project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectID = projectID_example; // String | ID of project
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.projectInviteList(projectID, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectInviteList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **String**| ID of project | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 
 **sort** | **String**| Field sorting | [optional] 
 **filterLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Field filtering | [optional] [default to const []]
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**ProjectInviteListRsp**](ProjectInviteListRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectInviteResend**
> GenericRsp projectInviteResend(projectID, projectInviteResendReq)



Resend a user invitation to an existing project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectID = projectID_example; // String | ID of project
final projectInviteResendReq = ProjectInviteResendReq(); // ProjectInviteResendReq | 

try {
    final result = api_instance.projectInviteResend(projectID, projectInviteResendReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectInviteResend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **String**| ID of project | 
 **projectInviteResendReq** | [**ProjectInviteResendReq**](ProjectInviteResendReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectList**
> ProjectListRsp projectList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists user's projects for given filters

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.projectList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectList: $e\n');
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

[**ProjectListRsp**](ProjectListRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectPermissionList**
> ProjectPermissionListRsp projectPermissionList(projectID, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists all other users that have permission to the project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectID = projectID_example; // String | ID of project
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.projectPermissionList(projectID, remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectPermissionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **String**| ID of project | 
 **remoteAddress** | **String**| Client's remote address | [optional] 
 **userAgent** | **String**| Client's user agent | [optional] 
 **sort** | **String**| Field sorting | [optional] 
 **filterLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Field filtering | [optional] [default to const []]
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Number of items per page | [optional] [default to 10]

### Return type

[**ProjectPermissionListRsp**](ProjectPermissionListRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectUpdate**
> ProjectUpdateRsp projectUpdate(projectUpdateReq)



Updates an existing project

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProjectsApi();
final projectUpdateReq = ProjectUpdateReq(); // ProjectUpdateReq | 

try {
    final result = api_instance.projectUpdate(projectUpdateReq);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->projectUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectUpdateReq** | [**ProjectUpdateReq**](ProjectUpdateReq.md)|  | 

### Return type

[**ProjectUpdateRsp**](ProjectUpdateRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

