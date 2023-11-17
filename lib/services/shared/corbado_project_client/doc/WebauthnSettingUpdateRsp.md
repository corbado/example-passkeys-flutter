# backend_api_public.model.WebauthnSettingUpdateRsp

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
**name** | **String** | Name of this setting | 
**origin** | **String** | Define here either a url incl. schema or an android-apk-key-hash | 
**id** | **String** | ID of WebAuthn setting | 
**created** | **String** | Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format | 
**updated** | **String** | Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


