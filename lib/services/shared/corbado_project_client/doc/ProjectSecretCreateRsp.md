# backend_api_public.model.ProjectSecretCreateRsp

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
**id** | **String** | ID of project secret | 
**hint** | **String** | Hint of the server-side generated secret. First 3 characters and last 3 characters | 
**created** | **String** | Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format | 
**secret** | **String** | Server-side generated secret. Only filled on create | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


