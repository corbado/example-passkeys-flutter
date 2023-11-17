# backend_api_public.model.ProjectConfig

## Load the model package
```dart
import 'package:backend_api_public/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectID** | **String** | ID of project | 
**externalName** | **String** |  | 
**emailFrom** | **String** |  | 
**smsFrom** | **String** |  | 
**fallbackLanguage** | **String** |  | 
**autoDetectLanguage** | **bool** |  | 
**integrationModeHosted** | **bool** |  | 
**integrationModeAPI** | **bool** |  | 
**integrationModeWebComponent** | **bool** |  | 
**hasExistingUsers** | **bool** |  | 
**hasVerifiedSession** | **bool** |  | 
**hasGeneratedSession** | **bool** |  | 
**hasStartedUsingPasskeys** | **bool** |  | 
**hasStartedUsingSessions** | **bool** |  | 
**backendAPIUrl** | **String** |  | 
**frontendAPIUrl** | **String** |  | 
**applicationUrl** | **String** |  | 
**useCli** | **bool** |  | 
**doubleOptIn** | **bool** |  | 
**userFullNameRequired** | **bool** |  | 
**webauthnRPID** | **String** |  | 
**webComponentDebug** | **bool** |  | 
**created** | **String** | Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format | 
**updated** | **String** | Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format | 
**status** | **String** |  | 
**appType** | **String** |  | [optional] 
**productKey** | **String** |  | [optional] 
**externalApplicationProtocolVersion** | **String** |  | [optional] 
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
**cliSecret** | **String** |  | [optional] 
**environment** | **String** |  | [optional] 
**frontendFramework** | **String** |  | [optional] 
**domain** | **String** |  | [optional] 
**smtpUseCustom** | **bool** |  | [optional] 
**smtpHost** | **String** |  | [optional] 
**smtpPort** | **int** |  | [optional] 
**smtpUsername** | **String** |  | [optional] 
**smtpPassword** | **String** |  | [optional] 
**supportEmail** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


