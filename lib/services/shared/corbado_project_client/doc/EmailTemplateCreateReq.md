# backend_api_public.model.EmailTemplateCreateReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lang** | **String** |  | 
**type** | **String** |  | 
**name** | **String** |  | 
**subject** | **String** |  | 
**plainTextBody** | **String** |  | 
**htmlTextTitle** | **String** |  | 
**htmlTextBody** | **String** |  | 
**htmlTextButton** | **String** |  | 
**htmlColorFont** | **String** |  | 
**htmlColorBackgroundOuter** | **String** |  | 
**htmlColorBackgroundInner** | **String** |  | 
**htmlColorButton** | **String** |  | 
**htmlColorButtonFont** | **String** |  | 
**isDefault** | **bool** |  | 
**action** | **String** |  | [optional] 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


