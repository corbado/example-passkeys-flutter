# backend_api_public.model.RequestLog

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | 
**projectID** | **String** | ID of project | 
**userID** | **String** | ID of the user | 
**application** | **String** | Application this request was processed with | 
**method** | **String** | HTTP method (such as GET and POST) | 
**endpoint** | **String** | Endpoint that was requested | 
**source_** | **String** | Request source | 
**request** | **String** | Request JSON data | 
**queryParams** | **String** | Request query parameters | 
**responseStatus** | **int** | Response HTTP status | 
**response** | **String** | Response JSON data | 
**runtime** | **double** | Runtime in seconds for this request | 
**remoteAddress** | **String** | Caller remote address | 
**created** | **String** | Timestamp of when the request was performed in RFC3339 format | 
**tags** | [**Object**](.md) | Arbitrary tags attached to this request | 
**details** | **List<String>** | Any freetext additional information attached to this request. Additional logs, errors, etc. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


