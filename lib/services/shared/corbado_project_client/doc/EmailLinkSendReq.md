# backend_api_public.model.EmailLinkSendReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Recipient email address | 
**create** | **bool** | Defines if user email should be created if not found | 
**redirect** | **String** | Redirect target after user clicks on email magic link | 
**tokenLifetime** | **String** | Defines the lifetime of the token that needs to be validated | [optional] 
**userFullName** | **String** | Optional user's full name to be used if the user wasn't found and needs to be created first | [optional] 
**templateName** | **String** | Template name of email to send | [optional] 
**purpose** | **String** | Purpose of the email link | [optional] 
**additionalPayload** | **String** | Additional payload in JSON format | [optional] 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


