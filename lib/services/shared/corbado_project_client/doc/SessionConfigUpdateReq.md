# backend_api_public.model.SessionConfigUpdateReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  | [optional] 
**shortLifetimeMinutes** | **int** |  | [optional] 
**shortCookieDomain** | **String** |  | [optional] 
**shortCookieSecure** | **bool** |  | [optional] 
**shortCookieSameSite** | **String** |  | [optional] 
**longLifetimeValue** | **int** |  | [optional] 
**longLifetimeUnit** | **String** |  | [optional] 
**longInactivityValue** | **int** |  | [optional] 
**longInactivityUnit** | **String** |  | [optional] 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


