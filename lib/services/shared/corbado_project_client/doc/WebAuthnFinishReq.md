# backend_api_public.model.WebAuthnFinishReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**origin** | **String** | External application address including protocol and port when not 80 or 443 | 
**publicKeyCredential** | **String** | Contains JSON payload data for Passkeys (Biometrics) login finish challenge | 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


