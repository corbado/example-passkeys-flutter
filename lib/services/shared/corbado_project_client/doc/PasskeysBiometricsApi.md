# backend_api_public.api.PasskeysBiometricsApi

## Load the API package
```dart
import 'package:backend_api_public/api.dart';
```

All URIs are relative to *https://backendapi.corbado.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webAuthnAssociateStart**](PasskeysBiometricsApi.md#webauthnassociatestart) | **POST** /v1/webauthn/associate/start | 
[**webAuthnAuthenticateFinish**](PasskeysBiometricsApi.md#webauthnauthenticatefinish) | **POST** /v1/webauthn/authenticate/finish | 
[**webAuthnAuthenticateStart**](PasskeysBiometricsApi.md#webauthnauthenticatestart) | **POST** /v1/webauthn/authenticate/start | 
[**webAuthnAuthenticatorUpdate**](PasskeysBiometricsApi.md#webauthnauthenticatorupdate) | **PUT** /v1/webauthn/authenticator/{authenticatorID} | 
[**webAuthnCredentialDelete**](PasskeysBiometricsApi.md#webauthncredentialdelete) | **DELETE** /v1/users/{userID}/credentials/{credentialID} | 
[**webAuthnCredentialExists**](PasskeysBiometricsApi.md#webauthncredentialexists) | **POST** /v1/webauthn/credential/exists | 
[**webAuthnCredentialUpdate**](PasskeysBiometricsApi.md#webauthncredentialupdate) | **PUT** /v1/webauthn/credential/{credentialID} | 
[**webAuthnMediationStart**](PasskeysBiometricsApi.md#webauthnmediationstart) | **POST** /v1/webauthn/mediation/start | 
[**webAuthnRegisterFinish**](PasskeysBiometricsApi.md#webauthnregisterfinish) | **POST** /v1/webauthn/register/finish | 
[**webAuthnRegisterStart**](PasskeysBiometricsApi.md#webauthnregisterstart) | **POST** /v1/webauthn/register/start | 
[**webAuthnSettingCreate**](PasskeysBiometricsApi.md#webauthnsettingcreate) | **POST** /v1/webauthn/settings | 
[**webAuthnSettingDelete**](PasskeysBiometricsApi.md#webauthnsettingdelete) | **DELETE** /v1/webauthn/settings/{settingID} | 
[**webAuthnSettingGet**](PasskeysBiometricsApi.md#webauthnsettingget) | **GET** /v1/webauthn/settings/{settingID} | 
[**webAuthnSettingList**](PasskeysBiometricsApi.md#webauthnsettinglist) | **GET** /v1/webauthn/settings | 
[**webAuthnSettingPut**](PasskeysBiometricsApi.md#webauthnsettingput) | **PUT** /v1/webauthn/settings/{settingID} | 


# **webAuthnAssociateStart**
> WebAuthnAssociateStartRsp webAuthnAssociateStart(webAuthnAssociateStartReq)



Starts association token flow for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final webAuthnAssociateStartReq = WebAuthnAssociateStartReq(); // WebAuthnAssociateStartReq | 

try {
    final result = api_instance.webAuthnAssociateStart(webAuthnAssociateStartReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnAssociateStart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webAuthnAssociateStartReq** | [**WebAuthnAssociateStartReq**](WebAuthnAssociateStartReq.md)|  | 

### Return type

[**WebAuthnAssociateStartRsp**](WebAuthnAssociateStartRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnAuthenticateFinish**
> WebAuthnAuthenticateFinishRsp webAuthnAuthenticateFinish(webAuthnFinishReq)



Completes authentication of a user for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final webAuthnFinishReq = WebAuthnFinishReq(); // WebAuthnFinishReq | 

try {
    final result = api_instance.webAuthnAuthenticateFinish(webAuthnFinishReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnAuthenticateFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webAuthnFinishReq** | [**WebAuthnFinishReq**](WebAuthnFinishReq.md)|  | 

### Return type

[**WebAuthnAuthenticateFinishRsp**](WebAuthnAuthenticateFinishRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnAuthenticateStart**
> WebAuthnAuthenticateStartRsp webAuthnAuthenticateStart(webAuthnAuthenticateStartReq)



Starts authentication of a user for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final webAuthnAuthenticateStartReq = WebAuthnAuthenticateStartReq(); // WebAuthnAuthenticateStartReq | 

try {
    final result = api_instance.webAuthnAuthenticateStart(webAuthnAuthenticateStartReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnAuthenticateStart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webAuthnAuthenticateStartReq** | [**WebAuthnAuthenticateStartReq**](WebAuthnAuthenticateStartReq.md)|  | 

### Return type

[**WebAuthnAuthenticateStartRsp**](WebAuthnAuthenticateStartRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnAuthenticatorUpdate**
> GenericRsp webAuthnAuthenticatorUpdate(authenticatorID, webAuthnAuthenticatorUpdateReq)



Update authenticator

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

final api_instance = PasskeysBiometricsApi();
final authenticatorID = authenticatorID_example; // String | ID of authenticator
final webAuthnAuthenticatorUpdateReq = WebAuthnAuthenticatorUpdateReq(); // WebAuthnAuthenticatorUpdateReq | 

try {
    final result = api_instance.webAuthnAuthenticatorUpdate(authenticatorID, webAuthnAuthenticatorUpdateReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnAuthenticatorUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticatorID** | **String**| ID of authenticator | 
 **webAuthnAuthenticatorUpdateReq** | [**WebAuthnAuthenticatorUpdateReq**](WebAuthnAuthenticatorUpdateReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnCredentialDelete**
> GenericRsp webAuthnCredentialDelete(userID, credentialID, emptyReq)



Delete credential

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

final api_instance = PasskeysBiometricsApi();
final userID = userID_example; // String | ID of user
final credentialID = credentialID_example; // String | ID of credential
final emptyReq = EmptyReq(); // EmptyReq | 

try {
    final result = api_instance.webAuthnCredentialDelete(userID, credentialID, emptyReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnCredentialDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userID** | **String**| ID of user | 
 **credentialID** | **String**| ID of credential | 
 **emptyReq** | [**EmptyReq**](EmptyReq.md)|  | 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnCredentialExists**
> WebAuthnCredentialExistsRsp webAuthnCredentialExists(webAuthnCredentialExistsReq)



Checks if active webauthn credential exists for provided user and device

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

final api_instance = PasskeysBiometricsApi();
final webAuthnCredentialExistsReq = WebAuthnCredentialExistsReq(); // WebAuthnCredentialExistsReq | 

try {
    final result = api_instance.webAuthnCredentialExists(webAuthnCredentialExistsReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnCredentialExists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webAuthnCredentialExistsReq** | [**WebAuthnCredentialExistsReq**](WebAuthnCredentialExistsReq.md)|  | 

### Return type

[**WebAuthnCredentialExistsRsp**](WebAuthnCredentialExistsRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnCredentialUpdate**
> WebAuthnCredentialRsp webAuthnCredentialUpdate(credentialID, webAuthnCredentialReq)



Update credential

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

final api_instance = PasskeysBiometricsApi();
final credentialID = credentialID_example; // String | ID of credential
final webAuthnCredentialReq = WebAuthnCredentialReq(); // WebAuthnCredentialReq | 

try {
    final result = api_instance.webAuthnCredentialUpdate(credentialID, webAuthnCredentialReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnCredentialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialID** | **String**| ID of credential | 
 **webAuthnCredentialReq** | [**WebAuthnCredentialReq**](WebAuthnCredentialReq.md)|  | 

### Return type

[**WebAuthnCredentialRsp**](WebAuthnCredentialRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnMediationStart**
> WebAuthnMediationStartRsp webAuthnMediationStart(webAuthnMediationStartReq)



Starts mediation for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final webAuthnMediationStartReq = WebAuthnMediationStartReq(); // WebAuthnMediationStartReq | 

try {
    final result = api_instance.webAuthnMediationStart(webAuthnMediationStartReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnMediationStart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webAuthnMediationStartReq** | [**WebAuthnMediationStartReq**](WebAuthnMediationStartReq.md)|  | 

### Return type

[**WebAuthnMediationStartRsp**](WebAuthnMediationStartRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnRegisterFinish**
> WebAuthnRegisterFinishRsp webAuthnRegisterFinish(webAuthnFinishReq)



Completes registration of a user for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final webAuthnFinishReq = WebAuthnFinishReq(); // WebAuthnFinishReq | 

try {
    final result = api_instance.webAuthnRegisterFinish(webAuthnFinishReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnRegisterFinish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webAuthnFinishReq** | [**WebAuthnFinishReq**](WebAuthnFinishReq.md)|  | 

### Return type

[**WebAuthnRegisterFinishRsp**](WebAuthnRegisterFinishRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnRegisterStart**
> WebAuthnRegisterStartRsp webAuthnRegisterStart(webAuthnRegisterStartReq)



Starts registration of a user for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final webAuthnRegisterStartReq = WebAuthnRegisterStartReq(); // WebAuthnRegisterStartReq | 

try {
    final result = api_instance.webAuthnRegisterStart(webAuthnRegisterStartReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnRegisterStart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webAuthnRegisterStartReq** | [**WebAuthnRegisterStartReq**](WebAuthnRegisterStartReq.md)|  | [optional] 

### Return type

[**WebAuthnRegisterStartRsp**](WebAuthnRegisterStartRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnSettingCreate**
> WebauthnSettingCreateRsp webAuthnSettingCreate(webauthnSettingCreateReq)



Creates a new setting for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final webauthnSettingCreateReq = WebauthnSettingCreateReq(); // WebauthnSettingCreateReq | 

try {
    final result = api_instance.webAuthnSettingCreate(webauthnSettingCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnSettingCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webauthnSettingCreateReq** | [**WebauthnSettingCreateReq**](WebauthnSettingCreateReq.md)|  | [optional] 

### Return type

[**WebauthnSettingCreateRsp**](WebauthnSettingCreateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnSettingDelete**
> GenericRsp webAuthnSettingDelete(settingID, webauthnSettingDeleteReq)



Deletes a setting by id for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final settingID = pwa-abc123; // String | ID from create
final webauthnSettingDeleteReq = WebauthnSettingDeleteReq(); // WebauthnSettingDeleteReq | 

try {
    final result = api_instance.webAuthnSettingDelete(settingID, webauthnSettingDeleteReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnSettingDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingID** | **String**| ID from create | 
 **webauthnSettingDeleteReq** | [**WebauthnSettingDeleteReq**](WebauthnSettingDeleteReq.md)|  | [optional] 

### Return type

[**GenericRsp**](GenericRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnSettingGet**
> WebauthnSettingGetRsp webAuthnSettingGet(settingID)



Gets a setting by id for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final settingID = pwa-abc123; // String | ID from create

try {
    final result = api_instance.webAuthnSettingGet(settingID);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnSettingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingID** | **String**| ID from create | 

### Return type

[**WebauthnSettingGetRsp**](WebauthnSettingGetRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnSettingList**
> WebauthnSettingListRsp webAuthnSettingList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize)



Lists all settings for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final remoteAddress = remoteAddress_example; // String | Client's remote address
final userAgent = userAgent_example; // String | Client's user agent
final sort = sort_example; // String | Field sorting
final filterLeftSquareBracketRightSquareBracket = [[name:eq:mail@exammple.com]]; // List<String> | Field filtering
final page = 56; // int | Page number
final pageSize = 56; // int | Number of items per page

try {
    final result = api_instance.webAuthnSettingList(remoteAddress, userAgent, sort, filterLeftSquareBracketRightSquareBracket, page, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnSettingList: $e\n');
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

[**WebauthnSettingListRsp**](WebauthnSettingListRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webAuthnSettingPut**
> WebauthnSettingUpdateRsp webAuthnSettingPut(settingID, webauthnSettingUpdateReq)



Updates a setting by id for Passkeys (Biometrics)

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

final api_instance = PasskeysBiometricsApi();
final settingID = pwa-abc123; // String | ID from create
final webauthnSettingUpdateReq = WebauthnSettingUpdateReq(); // WebauthnSettingUpdateReq | 

try {
    final result = api_instance.webAuthnSettingPut(settingID, webauthnSettingUpdateReq);
    print(result);
} catch (e) {
    print('Exception when calling PasskeysBiometricsApi->webAuthnSettingPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settingID** | **String**| ID from create | 
 **webauthnSettingUpdateReq** | [**WebauthnSettingUpdateReq**](WebauthnSettingUpdateReq.md)|  | [optional] 

### Return type

[**WebauthnSettingUpdateRsp**](WebauthnSettingUpdateRsp.md)

### Authorization

[basicAuth](../README.md#basicAuth), [projectID](../README.md#projectID), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

