# backend_api_public.model.WebhookLog

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhookID** | **String** | Unique ID of webhook request which will be randomly generated on server side | 
**projectID** | **String** | ID of project | 
**action** | **String** | Webhook action | 
**responseID** | **String** | Unique ID of response, you can provide your own while responding to the webhook, if not the ID will be randomly generated on server side. This has the same meaning as overriding requestID for API requests.  | 
**requestURL** | **String** | Absolute request URL of webhook backend | 
**requestBody** | **String** | Request contents that were sent to webhook backend | 
**responseStatus** | **int** | Response HTTP status that was returned by webhook backend | 
**responseHeaders** | [**Object**](.md) | Response HTTP headers that were returned by webhook backend | 
**responseBody** | **String** | Response body JSON data that was returned by webhook backend | 
**responseError** | **String** | Response error if present | 
**runtime** | **double** | Runtime in seconds for this request | 
**created** | **String** | Timestamp of when the request was performed in RFC3339 format | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


