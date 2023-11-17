# backend_api_public.model.WebAuthnRegisterStartReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**origin** | **String** | External application address including protocol and port when not 80 or 443 | 
**username** | **String** |  | 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | 
**userFullName** | **String** | Optional user's full name to be used if the user wasn't found and needs to be created first | [optional] 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 
**credentialStatus** | **String** | Sets credential status into active and pending. Pending status dont allow a login until the credential gets confirmed by an api call. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


