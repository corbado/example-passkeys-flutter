# core_api.api.UsersApi

## Load the API package
```dart
import 'package:core_api/api.dart';
```

All URIs are relative to *https://api.eu-1.corbado.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**meDelete**](UsersApi.md#medelete) | **DELETE** /v1/me | 
[**meGet**](UsersApi.md#meget) | **GET** /v1/me | 
[**userUpdate**](UsersApi.md#userupdate) | **PUT** /v1/users | 


# **meDelete**
> GenericRsp meDelete(meDeleteReq)



Deletes current user

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final meDeleteReq = MeDeleteReq(); // MeDeleteReq | 

try {
    final result = api_instance.meDelete(meDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->meDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meDeleteReq** | [**MeDeleteReq**](MeDeleteReq.md)|  | [optional] 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **meGet**
> MeRsp meGet()



Gets current user

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    final result = api_instance.meGet();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->meGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MeRsp**](MeRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpdate**
> GenericRsp userUpdate(userUpdateReq)



Updates a user

### Example
```dart
import 'package:core_api/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userUpdateReq = UserUpdateReq(); // UserUpdateReq | 

try {
    final result = api_instance.userUpdate(userUpdateReq);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->userUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUpdateReq** | [**UserUpdateReq**](UserUpdateReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

