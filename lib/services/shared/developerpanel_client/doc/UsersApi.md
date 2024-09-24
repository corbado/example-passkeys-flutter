# developerpanel_client.api.UsersApi

## Load the API package
```dart
import 'package:developerpanel_client/api.dart';
```

All URIs are relative to *https://app.corbado.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1UsersDelete**](UsersApi.md#v1usersdelete) | **DELETE** /v1/users | Delete user
[**v1UsersPut**](UsersApi.md#v1usersput) | **PUT** /v1/users | Update username


# **v1UsersDelete**
> v1UsersDelete()

Delete user

Deletes the authenticated user.

### Example
```dart
import 'package:developerpanel_client/api.dart';

final api_instance = UsersApi();

try {
    api_instance.v1UsersDelete();
} catch (e) {
    print('Exception when calling UsersApi->v1UsersDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UsersPut**
> v1UsersPut(v1UsersPutRequest)

Update username

Updates username of the authenticated user.

### Example
```dart
import 'package:developerpanel_client/api.dart';

final api_instance = UsersApi();
final v1UsersPutRequest = V1UsersPutRequest(); // V1UsersPutRequest | 

try {
    api_instance.v1UsersPut(v1UsersPutRequest);
} catch (e) {
    print('Exception when calling UsersApi->v1UsersPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1UsersPutRequest** | [**V1UsersPutRequest**](V1UsersPutRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

