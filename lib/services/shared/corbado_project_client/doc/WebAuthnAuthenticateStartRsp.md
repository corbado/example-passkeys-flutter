# backend_api_public.model.WebAuthnAuthenticateStartRsp

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**httpStatusCode** | **int** | HTTP status code of operation | 
**message** | **String** |  | 
**requestData** | [**RequestData**](RequestData.md) |  | 
**runtime** | **double** | Runtime in seconds for this request | 
**publicKeyCredentialRequestOptions** | **String** | Contains JSON payload data to start Passkeys (Biometrics) login challenge | 
**status** | **String** | Status represents information if authenticate start was successful or device is unknown | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


