# backend_api_public.model.WebAuthnMediationStartReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**origin** | **String** | External application address including protocol and port when not 80 or 443 | 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | 
**username** | **String** | Optional limits possible credentials matching to username | [optional] 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


