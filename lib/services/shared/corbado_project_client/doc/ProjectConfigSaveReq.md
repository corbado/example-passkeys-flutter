# backend_api_public.model.ProjectConfigSaveReq

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wizard** | **bool** |  | [optional] 
**externalName** | **String** |  | [optional] 
**appType** | **String** |  | [optional] 
**productKey** | **String** |  | [optional] 
**emailFrom** | **String** |  | [optional] 
**smsFrom** | **String** |  | [optional] 
**externalApplicationProtocolVersion** | **String** | Defines which version of webhook is used | [optional] 
**webhookURL** | **String** |  | [optional] 
**webhookUsername** | **String** |  | [optional] 
**webhookPassword** | **String** |  | [optional] 
**webhookTestInvalidUsername** | **String** |  | [optional] 
**webhookTestValidUsername** | **String** |  | [optional] 
**webhookTestValidPassword** | **String** |  | [optional] 
**externalApplicationUsername** | **String** |  | [optional] 
**externalApplicationPassword** | **String** |  | [optional] 
**legacyAuthMethodsUrl** | **String** |  | [optional] 
**passwordVerifyUrl** | **String** |  | [optional] 
**authSuccessRedirectUrl** | **String** |  | [optional] 
**passwordResetUrl** | **String** |  | [optional] 
**allowUserRegistration** | **bool** |  | [optional] 
**allowIPStickiness** | **bool** |  | [optional] 
**passkeyAppendInterval** | **String** |  | [optional] 
**fallbackLanguage** | **String** |  | [optional] 
**autoDetectLanguage** | **bool** |  | [optional] 
**integrationModeHosted** | **bool** |  | [optional] 
**integrationModeAPI** | **bool** |  | [optional] 
**integrationModeWebComponent** | **bool** |  | [optional] 
**hasExistingUsers** | **bool** |  | [optional] 
**hasVerifiedSession** | **bool** |  | [optional] 
**hasGeneratedSession** | **bool** |  | [optional] 
**hasStartedUsingPasskeys** | **bool** |  | [optional] 
**hasStartedUsingSessions** | **bool** |  | [optional] 
**applicationUrl** | **String** |  | [optional] 
**useCli** | **bool** |  | [optional] 
**doubleOptIn** | **bool** |  | [optional] 
**userFullNameRequired** | **bool** |  | [optional] 
**webauthnRPID** | **String** |  | [optional] 
**domain** | **String** |  | [optional] 
**environment** | **String** |  | [optional] 
**frontendFramework** | **String** |  | [optional] 
**webComponentDebug** | **bool** |  | [optional] 
**smtpUseCustom** | **bool** |  | [optional] 
**smtpHost** | **String** |  | [optional] 
**smtpPort** | **int** |  | [optional] 
**smtpUsername** | **String** |  | [optional] 
**smtpPassword** | **String** |  | [optional] 
**supportEmail** | **String** |  | [optional] 
**requestID** | **String** | Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side | [optional] 
**clientInfo** | [**ClientInfo**](ClientInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


