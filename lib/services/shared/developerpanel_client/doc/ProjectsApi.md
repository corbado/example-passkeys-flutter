# developerpanel_client.api.ProjectsApi

## Load the API package
```dart
import 'package:developerpanel_client/api.dart';
```

All URIs are relative to *https://app.corbado.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ProjectsDeleteDelete**](ProjectsApi.md#v1projectsdeletedelete) | **DELETE** /v1/projects/delete | Delete a project
[**v1ProjectsGet**](ProjectsApi.md#v1projectsget) | **GET** /v1/projects | List projects
[**v1ProjectsPost**](ProjectsApi.md#v1projectspost) | **POST** /v1/projects | Create a new project


# **v1ProjectsDeleteDelete**
> V1ProjectsDeleteDelete200Response v1ProjectsDeleteDelete(v1ProjectsDeleteDeleteRequest)

Delete a project

Deletes a project with the specified project ID. Only the owner can delete the project.

### Example
```dart
import 'package:developerpanel_client/api.dart';

final api_instance = ProjectsApi();
final v1ProjectsDeleteDeleteRequest = V1ProjectsDeleteDeleteRequest(); // V1ProjectsDeleteDeleteRequest | 

try {
    final result = api_instance.v1ProjectsDeleteDelete(v1ProjectsDeleteDeleteRequest);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->v1ProjectsDeleteDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1ProjectsDeleteDeleteRequest** | [**V1ProjectsDeleteDeleteRequest**](V1ProjectsDeleteDeleteRequest.md)|  | 

### Return type

[**V1ProjectsDeleteDelete200Response**](V1ProjectsDeleteDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ProjectsGet**
> V1ProjectsGet200Response v1ProjectsGet(page, pageSize)

List projects

Returns a paginated list of projects for the authenticated user.

### Example
```dart
import 'package:developerpanel_client/api.dart';

final api_instance = ProjectsApi();
final page = 1; // int | The page number for pagination (defaults to 1).
final pageSize = 10; // int | The number of items per page (defaults to 10, max 100).

try {
    final result = api_instance.v1ProjectsGet(page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->v1ProjectsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number for pagination (defaults to 1). | [optional] 
 **pageSize** | **int**| The number of items per page (defaults to 10, max 100). | [optional] 

### Return type

[**V1ProjectsGet200Response**](V1ProjectsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ProjectsPost**
> Project v1ProjectsPost(v1ProjectsPostRequest)

Create a new project

Creates a new project for the authenticated user.

### Example
```dart
import 'package:developerpanel_client/api.dart';

final api_instance = ProjectsApi();
final v1ProjectsPostRequest = V1ProjectsPostRequest(); // V1ProjectsPostRequest | 

try {
    final result = api_instance.v1ProjectsPost(v1ProjectsPostRequest);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->v1ProjectsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1ProjectsPostRequest** | [**V1ProjectsPostRequest**](V1ProjectsPostRequest.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

