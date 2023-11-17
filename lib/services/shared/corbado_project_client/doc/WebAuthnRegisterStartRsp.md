# backend_api_public.model.WebAuthnRegisterStartRsp

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
**status** | **String** | Status represents information if user signup was successful or the user with its credentials already exists | 
**publicKeyCredentialCreationOptions** | **String** | Contains JSON payload data to start Passkeys (Biometrics) sign up challenge | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


