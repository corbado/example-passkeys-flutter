# backend_api_public.model.SmsCodeSendReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phoneNumber** | **String** | Recipient phone number | 
**create** | **bool** | Defines if user phone number should be created if not found | 
**userFullName** | **String** | Optional user's full name to be used if the user wasn't found and needs to be created first | [optional] 
**templateName** | **String** | Template name of SMS to send | [optional] 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


