# backend_api_public

# Introduction
This documentation gives an overview of all Corbado Backend API calls to implement passwordless authentication with Passkeys.

The Corbado Backend API is organized around REST principles. It uses resource-oriented URLs with verbs (HTTP methods) and HTTP status codes. Requests need to be valid JSON payloads. We always return JSON.

The Corbado Backend API specification is written in **OpenAPI Version 3.0.3**. You can download it via the download button at the top and use it to generate clients in languages we do not provide officially for example.

# Authentication
To authenticate your API requests HTTP Basic Auth is used.

You need to set the projectID as username and the API secret as password. The authorization header looks as follows:

`Basic <<projectID>:<API secret>>`

The **authorization header** needs to be **Base64 encoded** to be working. If the authorization header is missing or incorrect, the API will respond with status code 401.

# Error types
As mentioned above we make use of HTTP status codes. **4xx** errors indicate so called client errors, meaning the error occurred on client side and you need to fix it. **5xx** errors indicate server errors, which means the error occurred on server side and outside your control.

Besides HTTP status codes Corbado uses what we call error types which gives more details in error cases and help you to debug your request.

## internal_error
The error type **internal_error** is used when some internal error occurred at Corbado. You can retry your request but usually there is nothing you can do about it. All internal errors get logged and will triggert an alert to our operations team which takes care of the situation as soon as possible.

## not_found
The error type **not_found** is used when you try to get a resource which cannot be found. Most common case is that you provided a wrong ID.

## method_not_allowed
The error type **method_not_allowed** is used when you use a HTTP method (GET for example) on a resource/endpoint which it not supports. 

## validation_error
The error type **validation_error** is used when there is validation error on the data you provided in the request payload or path. There will be detailed information in the JSON response about the validation error like what exactly went wrong on what field. 

## project_id_mismatch
The error type **project_id_mismatch** is used when there is a project ID you provided mismatch.

## login_error
The error type **login_error** is used when the authentication failed. Most common case is that you provided a wrong pair of project ID and API secret. As mentioned above with use HTTP Basic Auth for authentication.

## invalid_json
The error type **invalid_json** is used when you send invalid JSON as request body. There will be detailed information in the JSON response about what went wrong.

## rate_limited
The error type **rate_limited** is used when ran into rate limiting of the Corbado Backend API. Right now you can do a maximum of **2000 requests** within **10 seconds** from a **single IP**. Throttle your requests and try again. If you think you need more contact support@corbado.com.

## invalid_origin
The error type **invalid_origin** is used when the API has been called from a origin which is not authorized (CORS). Add the origin to your project at https://app.corbado.com/app/settings/credentials/authorized-origins.

## already_exists
The error type **already_exists** is used when you try create a resource which already exists. Most common case is that there is some unique constraint on one of the fields.

# Security and privacy
Corbado services are designed, developed, monitored, and updated with security at our core to protect you and your customers’ data and privacy.

## Security

### Infrastructure security
Corbado leverages highly available and secure cloud infrastructure to ensure that our services are always available and securely delivered. Corbado's services are operated in uvensys GmbH's data centers in Germany and comply with ISO standard 27001. All data centers have redundant power and internet connections to avoid failure. The main location of the servers used is in Linden and offers 24/7 support. We do not use any AWS, GCP or Azure services.

Each server is monitored 24/7 and in the event of problems, automated information is sent via SMS and e-mail. The monitoring is done by the external service provider Serverguard24 GmbH. 

All Corbado hardware and networking is routinely updated and audited to ensure systems are secure and that least privileged access is followed. Additionally we implement robust logging and audit protocols that allow us high visibility into system use.

### Responsible disclosure program
Here at Corbado, we take the security of our user’s data and of our services seriously. As such, we encourage responsible security research on Corbado services and products. If you believe you’ve discovered a potential vulnerability, please let us know by emailing us at [security@corbado.com](mailto:security@corbado.com). We will acknowledge your email within 2 business days. As public disclosures of a security vulnerability could put the entire Corbado community at risk, we ask that you keep such potential vulnerabilities confidential until we are able to address them. We aim to resolve critical issues within 30 days of disclosure. Please make a good faith effort to avoid violating privacy, destroying data, or interrupting or degrading the Corbado service. Please only interact with accounts you own or for which you have explicit permission from the account holder. While researching, please refrain from:

- Distributed Denial of Service (DDoS)
- Spamming
- Social engineering or phishing of Corbado employees or contractors
- Any attacks against Corbado's physical property or data centers

Thank you for helping to keep Corbado and our users safe!

### Rate limiting
At Corbado, we apply rate limit policies on our APIs in order to protect your application and user management infrastructure, so your users will have a frictionless non-interrupted experience.

Corbado responds with HTTP status code 429 (too many requests) when the rate limits exceed.
Your code logic should be able to handle such cases by checking the status code on the response and recovering from such cases.
If a retry is needed, it is best to allow for a back-off to avoid going into an infinite retry loop.

The current rate limit for all our API endpoints is **max. 100 requests per 10 seconds**.

## Privacy
Corbado is committed to protecting the personal data of our customers and their customers. Corbado has in place appropriate data security measures that meet industry standards. We regularly review and make enhancements to our processes, products, documentation, and contracts to help support ours and our customers’ compliance for the processing of personal data.

We try to minimize the usage and processing of personally identifiable information. Therefore, all our services are constructed to avoid unnecessary data consumption.

To make our services work, we only require the following data:
- any kind of identifier (e.g. UUID, phone number, email address)
- IP address (only temporarily for rate limiting aspects)
- User agent (for device management)


This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://www.corbado.com](https://www.corbado.com)

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  backend_api_public:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  backend_api_public:
    path: /path/to/backend_api_public
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:backend_api_public/api.dart';

// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: projectID
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('projectID').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = APISecretsApi();
final projectSecretCreateReq = ProjectSecretCreateReq(); // ProjectSecretCreateReq | 

try {
    final result = api_instance.projectSecretCreate(projectSecretCreateReq);
    print(result);
} catch (e) {
    print('Exception when calling APISecretsApi->projectSecretCreate: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *https://backendapi.corbado.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*APISecretsApi* | [**projectSecretCreate**](doc//APISecretsApi.md#projectsecretcreate) | **POST** /v1/projectSecrets | 
*APISecretsApi* | [**projectSecretDelete**](doc//APISecretsApi.md#projectsecretdelete) | **DELETE** /v1/projectSecrets/{secretID} | 
*APISecretsApi* | [**projectSecretList**](doc//APISecretsApi.md#projectsecretlist) | **GET** /v1/projectSecrets | 
*AnalyzerApi* | [**trackingAllRequest**](doc//AnalyzerApi.md#trackingallrequest) | **GET** /v1/tracking | 
*AnalyzerApi* | [**trackingBackupStateGet**](doc//AnalyzerApi.md#trackingbackupstateget) | **GET** /v1/tracking/backupState | 
*AnalyzerApi* | [**trackingBrowserDetailedStatsList**](doc//AnalyzerApi.md#trackingbrowserdetailedstatslist) | **GET** /v1/tracking/browser/stats/detailed | 
*AnalyzerApi* | [**trackingBrowserStatsList**](doc//AnalyzerApi.md#trackingbrowserstatslist) | **GET** /v1/tracking/browser/stats | 
*AnalyzerApi* | [**trackingDetailedStatsList**](doc//AnalyzerApi.md#trackingdetailedstatslist) | **GET** /v1/tracking/stats/detailed | 
*AnalyzerApi* | [**trackingEnumsGet**](doc//AnalyzerApi.md#trackingenumsget) | **GET** /v1/tracking/enums | 
*AnalyzerApi* | [**trackingOSDetailedStatsList**](doc//AnalyzerApi.md#trackingosdetailedstatslist) | **GET** /v1/tracking/os/stats/detailed | 
*AnalyzerApi* | [**trackingOSStatsList**](doc//AnalyzerApi.md#trackingosstatslist) | **GET** /v1/tracking/os/stats | 
*AnalyzerApi* | [**trackingStatsList**](doc//AnalyzerApi.md#trackingstatslist) | **GET** /v1/tracking/stats | 
*AndroidAppConfigApi* | [**androidAppConfigCreate**](doc//AndroidAppConfigApi.md#androidappconfigcreate) | **POST** /v1/androidappconfig | 
*AndroidAppConfigApi* | [**androidAppConfigDelete**](doc//AndroidAppConfigApi.md#androidappconfigdelete) | **DELETE** /v1/androidappconfig/{androidAppConfigID} | 
*AndroidAppConfigApi* | [**androidAppConfigGet**](doc//AndroidAppConfigApi.md#androidappconfigget) | **GET** /v1/androidappconfig | 
*AndroidAppConfigApi* | [**androidAppConfigPut**](doc//AndroidAppConfigApi.md#androidappconfigput) | **PUT** /v1/androidappconfig/{androidAppConfigID} | 
*AssociationTokensApi* | [**associationTokenCreate**](doc//AssociationTokensApi.md#associationtokencreate) | **POST** /v1/associationTokens | 
*AuthMethodsApi* | [**authMethodsList**](doc//AuthMethodsApi.md#authmethodslist) | **POST** /v1/authMethods | 
*AuthTokensApi* | [**authTokenValidate**](doc//AuthTokensApi.md#authtokenvalidate) | **POST** /v1/authTokens/validate | 
*AuthTokensApi* | [**sessionTokenCreate**](doc//AuthTokensApi.md#sessiontokencreate) | **POST** /v1/sessions | 
*AuthTokensApi* | [**sessionTokenVerify**](doc//AuthTokensApi.md#sessiontokenverify) | **POST** /v1/sessions/verify | 
*EmailMagicLinksApi* | [**emailLinkDelete**](doc//EmailMagicLinksApi.md#emaillinkdelete) | **DELETE** /v1/emailLinks/{emailLinkID} | 
*EmailMagicLinksApi* | [**emailLinkGet**](doc//EmailMagicLinksApi.md#emaillinkget) | **GET** /v1/emailLinks/{emailLinkID} | 
*EmailMagicLinksApi* | [**emailLinkSend**](doc//EmailMagicLinksApi.md#emaillinksend) | **POST** /v1/emailLinks | 
*EmailMagicLinksApi* | [**emailLinkValidate**](doc//EmailMagicLinksApi.md#emaillinkvalidate) | **PUT** /v1/emailLinks/{emailLinkID}/validate | 
*EmailOTPApi* | [**emailCodeGet**](doc//EmailOTPApi.md#emailcodeget) | **GET** /v1/emailCodes/{emailCodeID} | 
*EmailOTPApi* | [**emailCodeSend**](doc//EmailOTPApi.md#emailcodesend) | **POST** /v1/emailCodes | 
*EmailOTPApi* | [**emailCodeValidate**](doc//EmailOTPApi.md#emailcodevalidate) | **PUT** /v1/emailCodes/{emailCodeID}/validate | 
*EmailTemplatesApi* | [**emailTemplateCreate**](doc//EmailTemplatesApi.md#emailtemplatecreate) | **POST** /v1/emailTemplates | 
*EmailTemplatesApi* | [**emailTemplateDelete**](doc//EmailTemplatesApi.md#emailtemplatedelete) | **DELETE** /v1/emailTemplates/{emailTemplateID} | 
*ExamplesApi* | [**exampleGet**](doc//ExamplesApi.md#exampleget) | **GET** /v1/examples/{fileName} | 
*IOSAppConfigApi* | [**iOSAppConfigCreate**](doc//IOSAppConfigApi.md#iosappconfigcreate) | **POST** /v1/iosappconfig | 
*IOSAppConfigApi* | [**iOSAppConfigDelete**](doc//IOSAppConfigApi.md#iosappconfigdelete) | **DELETE** /v1/iosappconfig/{iosAppConfigID} | 
*IOSAppConfigApi* | [**iOSAppConfigGet**](doc//IOSAppConfigApi.md#iosappconfigget) | **GET** /v1/iosappconfig | 
*IOSAppConfigApi* | [**iOSAppConfigPut**](doc//IOSAppConfigApi.md#iosappconfigput) | **PUT** /v1/iosappconfig/{iosAppConfigID} | 
*PasskeysBiometricsApi* | [**webAuthnAssociateStart**](doc//PasskeysBiometricsApi.md#webauthnassociatestart) | **POST** /v1/webauthn/associate/start | 
*PasskeysBiometricsApi* | [**webAuthnAuthenticateFinish**](doc//PasskeysBiometricsApi.md#webauthnauthenticatefinish) | **POST** /v1/webauthn/authenticate/finish | 
*PasskeysBiometricsApi* | [**webAuthnAuthenticateStart**](doc//PasskeysBiometricsApi.md#webauthnauthenticatestart) | **POST** /v1/webauthn/authenticate/start | 
*PasskeysBiometricsApi* | [**webAuthnAuthenticatorUpdate**](doc//PasskeysBiometricsApi.md#webauthnauthenticatorupdate) | **PUT** /v1/webauthn/authenticator/{authenticatorID} | 
*PasskeysBiometricsApi* | [**webAuthnCredentialDelete**](doc//PasskeysBiometricsApi.md#webauthncredentialdelete) | **DELETE** /v1/users/{userID}/credentials/{credentialID} | 
*PasskeysBiometricsApi* | [**webAuthnCredentialExists**](doc//PasskeysBiometricsApi.md#webauthncredentialexists) | **POST** /v1/webauthn/credential/exists | 
*PasskeysBiometricsApi* | [**webAuthnCredentialUpdate**](doc//PasskeysBiometricsApi.md#webauthncredentialupdate) | **PUT** /v1/webauthn/credential/{credentialID} | 
*PasskeysBiometricsApi* | [**webAuthnMediationStart**](doc//PasskeysBiometricsApi.md#webauthnmediationstart) | **POST** /v1/webauthn/mediation/start | 
*PasskeysBiometricsApi* | [**webAuthnRegisterFinish**](doc//PasskeysBiometricsApi.md#webauthnregisterfinish) | **POST** /v1/webauthn/register/finish | 
*PasskeysBiometricsApi* | [**webAuthnRegisterStart**](doc//PasskeysBiometricsApi.md#webauthnregisterstart) | **POST** /v1/webauthn/register/start | 
*PasskeysBiometricsApi* | [**webAuthnSettingCreate**](doc//PasskeysBiometricsApi.md#webauthnsettingcreate) | **POST** /v1/webauthn/settings | 
*PasskeysBiometricsApi* | [**webAuthnSettingDelete**](doc//PasskeysBiometricsApi.md#webauthnsettingdelete) | **DELETE** /v1/webauthn/settings/{settingID} | 
*PasskeysBiometricsApi* | [**webAuthnSettingGet**](doc//PasskeysBiometricsApi.md#webauthnsettingget) | **GET** /v1/webauthn/settings/{settingID} | 
*PasskeysBiometricsApi* | [**webAuthnSettingList**](doc//PasskeysBiometricsApi.md#webauthnsettinglist) | **GET** /v1/webauthn/settings | 
*PasskeysBiometricsApi* | [**webAuthnSettingPut**](doc//PasskeysBiometricsApi.md#webauthnsettingput) | **PUT** /v1/webauthn/settings/{settingID} | 
*ProjectConfigApi* | [**projectActivate**](doc//ProjectConfigApi.md#projectactivate) | **PUT** /v1/projects/activate | 
*ProjectConfigApi* | [**projectConfigGet**](doc//ProjectConfigApi.md#projectconfigget) | **GET** /v1/projectConfig | 
*ProjectConfigApi* | [**projectConfigSave**](doc//ProjectConfigApi.md#projectconfigsave) | **POST** /v1/projectConfig | 
*ProjectConfigApi* | [**projectConfigWebhookTest**](doc//ProjectConfigApi.md#projectconfigwebhooktest) | **PUT** /v1/projectConfig/testWebhook | 
*RequestLogsApi* | [**requestLogGet**](doc//RequestLogsApi.md#requestlogget) | **GET** /v1/requestLogs/{requestID} | 
*RequestLogsApi* | [**requestLogsList**](doc//RequestLogsApi.md#requestlogslist) | **GET** /v1/requestLogs | 
*SMSOTPApi* | [**smsCodeSend**](doc//SMSOTPApi.md#smscodesend) | **POST** /v1/smsCodes | 
*SMSOTPApi* | [**smsCodeValidate**](doc//SMSOTPApi.md#smscodevalidate) | **PUT** /v1/smsCodes/{smsCodeID}/validate | 
*SMSTemplatesApi* | [**smsTemplateCreate**](doc//SMSTemplatesApi.md#smstemplatecreate) | **POST** /v1/smsTemplates | 
*SMSTemplatesApi* | [**smsTemplateDelete**](doc//SMSTemplatesApi.md#smstemplatedelete) | **DELETE** /v1/smsTemplates/{smsTemplateID} | 
*SessionConfigApi* | [**sessionConfigGet**](doc//SessionConfigApi.md#sessionconfigget) | **GET** /v1/sessionConfig | 
*SessionConfigApi* | [**sessionConfigUpdate**](doc//SessionConfigApi.md#sessionconfigupdate) | **PUT** /v1/sessionConfig | 
*SessionsApi* | [**longSessionGet**](doc//SessionsApi.md#longsessionget) | **GET** /v1/longSessions/{sessionID} | 
*SessionsApi* | [**longSessionList**](doc//SessionsApi.md#longsessionlist) | **GET** /v1/longSessions | 
*SessionsApi* | [**longSessionRevoke**](doc//SessionsApi.md#longsessionrevoke) | **PUT** /v1/longSessions/{sessionID}/revoke | 
*UserApi* | [**userAuthLogList**](doc//UserApi.md#userauthloglist) | **GET** /v1/userauthlogs | 
*UserApi* | [**userCreate**](doc//UserApi.md#usercreate) | **POST** /v1/users | 
*UserApi* | [**userCustomLoginIdentifierCreate**](doc//UserApi.md#usercustomloginidentifiercreate) | **POST** /v1/users/{userID}/customLoginIdentifiers | 
*UserApi* | [**userCustomLoginIdentifierDelete**](doc//UserApi.md#usercustomloginidentifierdelete) | **DELETE** /v1/users/{userID}/customLoginIdentifiers/{customLoginIdentifierID} | 
*UserApi* | [**userCustomLoginIdentifierGet**](doc//UserApi.md#usercustomloginidentifierget) | **GET** /v1/users/{userID}/customLoginIdentifiers/{customLoginIdentifierID} | 
*UserApi* | [**userDelete**](doc//UserApi.md#userdelete) | **DELETE** /v1/users/{userID} | 
*UserApi* | [**userDeviceList**](doc//UserApi.md#userdevicelist) | **GET** /v1/users/{userID}/devices | 
*UserApi* | [**userEmailCreate**](doc//UserApi.md#useremailcreate) | **POST** /v1/users/{userID}/emails | 
*UserApi* | [**userEmailDelete**](doc//UserApi.md#useremaildelete) | **DELETE** /v1/users/{userID}/emails/{emailID} | 
*UserApi* | [**userEmailGet**](doc//UserApi.md#useremailget) | **GET** /v1/users/{userID}/emails/{emailID} | 
*UserApi* | [**userGet**](doc//UserApi.md#userget) | **GET** /v1/users/{userID} | 
*UserApi* | [**userList**](doc//UserApi.md#userlist) | **GET** /v1/users | 
*UserApi* | [**userPhoneNumberCreate**](doc//UserApi.md#userphonenumbercreate) | **POST** /v1/users/{userID}/phoneNumbers | 
*UserApi* | [**userPhoneNumberDelete**](doc//UserApi.md#userphonenumberdelete) | **DELETE** /v1/users/{userID}/phoneNumbers/{phoneNumberID} | 
*UserApi* | [**userPhoneNumberGet**](doc//UserApi.md#userphonenumberget) | **GET** /v1/users/{userID}/phoneNumbers/{phoneNumberID} | 
*UserApi* | [**userStatsList**](doc//UserApi.md#userstatslist) | **GET** /v1/users/stats | 
*UserApi* | [**userUpdate**](doc//UserApi.md#userupdate) | **PUT** /v1/users/{userID} | 
*ValidationApi* | [**originAllowed**](doc//ValidationApi.md#originallowed) | **PUT** /v1/origin/allowed | 
*ValidationApi* | [**validateEmail**](doc//ValidationApi.md#validateemail) | **PUT** /v1/validate/email | 
*ValidationApi* | [**validatePhoneNumber**](doc//ValidationApi.md#validatephonenumber) | **PUT** /v1/validate/phoneNumber | 
*WebhookLogsApi* | [**webhookLogsList**](doc//WebhookLogsApi.md#webhooklogslist) | **GET** /v1/webhookLogs | 


## Documentation For Models

 - [AndroidAppConfigDeleteReq](doc//AndroidAppConfigDeleteReq.md)
 - [AndroidAppConfigItem](doc//AndroidAppConfigItem.md)
 - [AndroidAppConfigListRsp](doc//AndroidAppConfigListRsp.md)
 - [AndroidAppConfigListRspAllOf](doc//AndroidAppConfigListRspAllOf.md)
 - [AndroidAppConfigSaveReq](doc//AndroidAppConfigSaveReq.md)
 - [AndroidAppConfigSaveRsp](doc//AndroidAppConfigSaveRsp.md)
 - [AndroidAppConfigUpdateReq](doc//AndroidAppConfigUpdateReq.md)
 - [AndroidAppConfigUpdateRsp](doc//AndroidAppConfigUpdateRsp.md)
 - [AssociationTokenCreateReq](doc//AssociationTokenCreateReq.md)
 - [AssociationTokenCreateRsp](doc//AssociationTokenCreateRsp.md)
 - [AssociationTokenCreateRspAllOf](doc//AssociationTokenCreateRspAllOf.md)
 - [AssociationTokenCreateRspAllOfData](doc//AssociationTokenCreateRspAllOfData.md)
 - [AuthMethod](doc//AuthMethod.md)
 - [AuthMethodsListReq](doc//AuthMethodsListReq.md)
 - [AuthMethodsListRsp](doc//AuthMethodsListRsp.md)
 - [AuthMethodsListRspAllOf](doc//AuthMethodsListRspAllOf.md)
 - [AuthMethodsListRspAllOfData](doc//AuthMethodsListRspAllOfData.md)
 - [AuthTokenValidateReq](doc//AuthTokenValidateReq.md)
 - [AuthTokenValidateRsp](doc//AuthTokenValidateRsp.md)
 - [ClientInfo](doc//ClientInfo.md)
 - [CustomLoginIdentifier](doc//CustomLoginIdentifier.md)
 - [Email](doc//Email.md)
 - [EmailCode](doc//EmailCode.md)
 - [EmailCodeGetRsp](doc//EmailCodeGetRsp.md)
 - [EmailCodeGetRspAllOf](doc//EmailCodeGetRspAllOf.md)
 - [EmailCodeGetRspAllOfData](doc//EmailCodeGetRspAllOfData.md)
 - [EmailCodeSendReq](doc//EmailCodeSendReq.md)
 - [EmailCodeSendRsp](doc//EmailCodeSendRsp.md)
 - [EmailCodeSendRspAllOf](doc//EmailCodeSendRspAllOf.md)
 - [EmailCodeSendRspAllOfData](doc//EmailCodeSendRspAllOfData.md)
 - [EmailCodeValidateReq](doc//EmailCodeValidateReq.md)
 - [EmailCodeValidateRsp](doc//EmailCodeValidateRsp.md)
 - [EmailLink](doc//EmailLink.md)
 - [EmailLinkGetRsp](doc//EmailLinkGetRsp.md)
 - [EmailLinkGetRspAllOf](doc//EmailLinkGetRspAllOf.md)
 - [EmailLinkGetRspAllOfData](doc//EmailLinkGetRspAllOfData.md)
 - [EmailLinkSendReq](doc//EmailLinkSendReq.md)
 - [EmailLinkSendRsp](doc//EmailLinkSendRsp.md)
 - [EmailLinkSendRspAllOf](doc//EmailLinkSendRspAllOf.md)
 - [EmailLinkSendRspAllOfData](doc//EmailLinkSendRspAllOfData.md)
 - [EmailLinkValidateRsp](doc//EmailLinkValidateRsp.md)
 - [EmailLinkValidateRspAllOf](doc//EmailLinkValidateRspAllOf.md)
 - [EmailLinksDeleteReq](doc//EmailLinksDeleteReq.md)
 - [EmailLinksValidateReq](doc//EmailLinksValidateReq.md)
 - [EmailTemplateCreateReq](doc//EmailTemplateCreateReq.md)
 - [EmailTemplateCreateRsp](doc//EmailTemplateCreateRsp.md)
 - [EmailTemplateCreateRspAllOf](doc//EmailTemplateCreateRspAllOf.md)
 - [EmailTemplateCreateRspAllOfData](doc//EmailTemplateCreateRspAllOfData.md)
 - [EmailTemplateDeleteReq](doc//EmailTemplateDeleteReq.md)
 - [EmailValidationResult](doc//EmailValidationResult.md)
 - [EmptyReq](doc//EmptyReq.md)
 - [ErrorRsp](doc//ErrorRsp.md)
 - [ErrorRspAllOf](doc//ErrorRspAllOf.md)
 - [ErrorRspAllOfError](doc//ErrorRspAllOfError.md)
 - [ErrorRspAllOfErrorValidation](doc//ErrorRspAllOfErrorValidation.md)
 - [ExampleGetRsp](doc//ExampleGetRsp.md)
 - [ExampleGetRspAllOf](doc//ExampleGetRspAllOf.md)
 - [FullUser](doc//FullUser.md)
 - [GenericRsp](doc//GenericRsp.md)
 - [IOSAppConfigDeleteReq](doc//IOSAppConfigDeleteReq.md)
 - [IOSAppConfigItem](doc//IOSAppConfigItem.md)
 - [IOSAppConfigListRsp](doc//IOSAppConfigListRsp.md)
 - [IOSAppConfigListRspAllOf](doc//IOSAppConfigListRspAllOf.md)
 - [IOSAppConfigSaveReq](doc//IOSAppConfigSaveReq.md)
 - [IOSAppConfigSaveRsp](doc//IOSAppConfigSaveRsp.md)
 - [IOSAppConfigUpdateReq](doc//IOSAppConfigUpdateReq.md)
 - [IOSAppConfigUpdateRsp](doc//IOSAppConfigUpdateRsp.md)
 - [LoginIdentifierType](doc//LoginIdentifierType.md)
 - [LongSession](doc//LongSession.md)
 - [LongSessionGetRsp](doc//LongSessionGetRsp.md)
 - [LongSessionGetRspAllOf](doc//LongSessionGetRspAllOf.md)
 - [LongSessionGetRspAllOfData](doc//LongSessionGetRspAllOfData.md)
 - [LongSessionListRsp](doc//LongSessionListRsp.md)
 - [LongSessionListRspAllOf](doc//LongSessionListRspAllOf.md)
 - [LongSessionListRspAllOfData](doc//LongSessionListRspAllOfData.md)
 - [LongSessionRevokeReq](doc//LongSessionRevokeReq.md)
 - [OriginAllowedReq](doc//OriginAllowedReq.md)
 - [OriginAllowedRsp](doc//OriginAllowedRsp.md)
 - [OriginAllowedRspAllOf](doc//OriginAllowedRspAllOf.md)
 - [Paging](doc//Paging.md)
 - [PhoneNumber](doc//PhoneNumber.md)
 - [PhoneNumberValidationResult](doc//PhoneNumberValidationResult.md)
 - [ProjectConfig](doc//ProjectConfig.md)
 - [ProjectConfigGetRsp](doc//ProjectConfigGetRsp.md)
 - [ProjectConfigGetRspAllOf](doc//ProjectConfigGetRspAllOf.md)
 - [ProjectConfigSaveReq](doc//ProjectConfigSaveReq.md)
 - [ProjectConfigWebhookTestReq](doc//ProjectConfigWebhookTestReq.md)
 - [ProjectConfigWebhookTestRsp](doc//ProjectConfigWebhookTestRsp.md)
 - [ProjectConfigWebhookTestRspAllOf](doc//ProjectConfigWebhookTestRspAllOf.md)
 - [ProjectConfigWebhookTestRspAllOfData](doc//ProjectConfigWebhookTestRspAllOfData.md)
 - [ProjectSecretCreateReq](doc//ProjectSecretCreateReq.md)
 - [ProjectSecretCreateRsp](doc//ProjectSecretCreateRsp.md)
 - [ProjectSecretDeleteReq](doc//ProjectSecretDeleteReq.md)
 - [ProjectSecretItem](doc//ProjectSecretItem.md)
 - [ProjectSecretListRsp](doc//ProjectSecretListRsp.md)
 - [ProjectSecretListRspAllOf](doc//ProjectSecretListRspAllOf.md)
 - [RequestData](doc//RequestData.md)
 - [RequestLog](doc//RequestLog.md)
 - [RequestLogGetRsp](doc//RequestLogGetRsp.md)
 - [RequestLogGetRspAllOf](doc//RequestLogGetRspAllOf.md)
 - [RequestLogsListRsp](doc//RequestLogsListRsp.md)
 - [RequestLogsListRspAllOf](doc//RequestLogsListRspAllOf.md)
 - [RequestLogsListRspAllOfData](doc//RequestLogsListRspAllOfData.md)
 - [SessionConfig](doc//SessionConfig.md)
 - [SessionConfigGetRsp](doc//SessionConfigGetRsp.md)
 - [SessionConfigGetRspAllOf](doc//SessionConfigGetRspAllOf.md)
 - [SessionConfigUpdateReq](doc//SessionConfigUpdateReq.md)
 - [SessionTokenCreateReq](doc//SessionTokenCreateReq.md)
 - [SessionTokenCreateRsp](doc//SessionTokenCreateRsp.md)
 - [SessionTokenCreateRspAllOf](doc//SessionTokenCreateRspAllOf.md)
 - [SessionTokenCreateRspAllOfData](doc//SessionTokenCreateRspAllOfData.md)
 - [SessionTokenVerifyReq](doc//SessionTokenVerifyReq.md)
 - [SessionTokenVerifyRsp](doc//SessionTokenVerifyRsp.md)
 - [SessionTokenVerifyRspAllOf](doc//SessionTokenVerifyRspAllOf.md)
 - [SessionTokenVerifyRspAllOfData](doc//SessionTokenVerifyRspAllOfData.md)
 - [SmsCodeSendReq](doc//SmsCodeSendReq.md)
 - [SmsCodeSendRsp](doc//SmsCodeSendRsp.md)
 - [SmsCodeSendRspAllOf](doc//SmsCodeSendRspAllOf.md)
 - [SmsCodeSendRspAllOfData](doc//SmsCodeSendRspAllOfData.md)
 - [SmsCodeValidateReq](doc//SmsCodeValidateReq.md)
 - [SmsCodeValidateRsp](doc//SmsCodeValidateRsp.md)
 - [SmsCodeValidateRspAllOf](doc//SmsCodeValidateRspAllOf.md)
 - [SmsTemplateCreateReq](doc//SmsTemplateCreateReq.md)
 - [SmsTemplateCreateRsp](doc//SmsTemplateCreateRsp.md)
 - [SmsTemplateCreateRspAllOf](doc//SmsTemplateCreateRspAllOf.md)
 - [SmsTemplateCreateRspAllOfData](doc//SmsTemplateCreateRspAllOfData.md)
 - [SmsTemplateDeleteReq](doc//SmsTemplateDeleteReq.md)
 - [Status](doc//Status.md)
 - [TrackingBackupState](doc//TrackingBackupState.md)
 - [TrackingBackupStateGetRsp](doc//TrackingBackupStateGetRsp.md)
 - [TrackingBackupStateGetRspAllOf](doc//TrackingBackupStateGetRspAllOf.md)
 - [TrackingBrowserDetailedStats](doc//TrackingBrowserDetailedStats.md)
 - [TrackingBrowserDetailedStatsListRsp](doc//TrackingBrowserDetailedStatsListRsp.md)
 - [TrackingBrowserDetailedStatsListRspAllOf](doc//TrackingBrowserDetailedStatsListRspAllOf.md)
 - [TrackingBrowserDetailedStatsListRspAllOfData](doc//TrackingBrowserDetailedStatsListRspAllOfData.md)
 - [TrackingBrowserStats](doc//TrackingBrowserStats.md)
 - [TrackingBrowserStatsListRsp](doc//TrackingBrowserStatsListRsp.md)
 - [TrackingBrowserStatsListRspAllOf](doc//TrackingBrowserStatsListRspAllOf.md)
 - [TrackingBrowserStatsListRspAllOfData](doc//TrackingBrowserStatsListRspAllOfData.md)
 - [TrackingDetailedStats](doc//TrackingDetailedStats.md)
 - [TrackingDetailedStatsListRsp](doc//TrackingDetailedStatsListRsp.md)
 - [TrackingDetailedStatsListRspAllOf](doc//TrackingDetailedStatsListRspAllOf.md)
 - [TrackingDetailedStatsListRspAllOfData](doc//TrackingDetailedStatsListRspAllOfData.md)
 - [TrackingEnums](doc//TrackingEnums.md)
 - [TrackingEnumsGetRsp](doc//TrackingEnumsGetRsp.md)
 - [TrackingEnumsGetRspAllOf](doc//TrackingEnumsGetRspAllOf.md)
 - [TrackingOSDetailedStats](doc//TrackingOSDetailedStats.md)
 - [TrackingOSDetailedStatsListRsp](doc//TrackingOSDetailedStatsListRsp.md)
 - [TrackingOSDetailedStatsListRspAllOf](doc//TrackingOSDetailedStatsListRspAllOf.md)
 - [TrackingOSDetailedStatsListRspAllOfData](doc//TrackingOSDetailedStatsListRspAllOfData.md)
 - [TrackingOSStats](doc//TrackingOSStats.md)
 - [TrackingOSStatsListRsp](doc//TrackingOSStatsListRsp.md)
 - [TrackingOSStatsListRspAllOf](doc//TrackingOSStatsListRspAllOf.md)
 - [TrackingOSStatsListRspAllOfData](doc//TrackingOSStatsListRspAllOfData.md)
 - [TrackingRawListRow](doc//TrackingRawListRow.md)
 - [TrackingRawListRsp](doc//TrackingRawListRsp.md)
 - [TrackingRawListRspAllOf](doc//TrackingRawListRspAllOf.md)
 - [TrackingStats](doc//TrackingStats.md)
 - [TrackingStatsListRsp](doc//TrackingStatsListRsp.md)
 - [TrackingStatsListRspAllOf](doc//TrackingStatsListRspAllOf.md)
 - [TrackingStatsListRspAllOfData](doc//TrackingStatsListRspAllOfData.md)
 - [User](doc//User.md)
 - [UserAuthLog](doc//UserAuthLog.md)
 - [UserAuthLogListRsp](doc//UserAuthLogListRsp.md)
 - [UserAuthLogListRspAllOf](doc//UserAuthLogListRspAllOf.md)
 - [UserAuthLogListRspAllOfData](doc//UserAuthLogListRspAllOfData.md)
 - [UserCreateReq](doc//UserCreateReq.md)
 - [UserCreateRsp](doc//UserCreateRsp.md)
 - [UserCreateRspAllOf](doc//UserCreateRspAllOf.md)
 - [UserCreateRspAllOfData](doc//UserCreateRspAllOfData.md)
 - [UserCustomLoginIdentifierCreateReq](doc//UserCustomLoginIdentifierCreateReq.md)
 - [UserCustomLoginIdentifierCreateRsp](doc//UserCustomLoginIdentifierCreateRsp.md)
 - [UserCustomLoginIdentifierCreateRspAllOf](doc//UserCustomLoginIdentifierCreateRspAllOf.md)
 - [UserCustomLoginIdentifierCreateRspAllOfData](doc//UserCustomLoginIdentifierCreateRspAllOfData.md)
 - [UserCustomLoginIdentifierDeleteReq](doc//UserCustomLoginIdentifierDeleteReq.md)
 - [UserCustomLoginIdentifierGetRsp](doc//UserCustomLoginIdentifierGetRsp.md)
 - [UserCustomLoginIdentifierGetRspAllOf](doc//UserCustomLoginIdentifierGetRspAllOf.md)
 - [UserCustomLoginIdentifierGetRspAllOfData](doc//UserCustomLoginIdentifierGetRspAllOfData.md)
 - [UserDeleteReq](doc//UserDeleteReq.md)
 - [UserDevice](doc//UserDevice.md)
 - [UserDeviceListRsp](doc//UserDeviceListRsp.md)
 - [UserDeviceListRspAllOf](doc//UserDeviceListRspAllOf.md)
 - [UserEmail](doc//UserEmail.md)
 - [UserEmailCreateReq](doc//UserEmailCreateReq.md)
 - [UserEmailCreateRsp](doc//UserEmailCreateRsp.md)
 - [UserEmailCreateRspAllOf](doc//UserEmailCreateRspAllOf.md)
 - [UserEmailCreateRspAllOfData](doc//UserEmailCreateRspAllOfData.md)
 - [UserEmailDeleteReq](doc//UserEmailDeleteReq.md)
 - [UserEmailGetRsp](doc//UserEmailGetRsp.md)
 - [UserEmailGetRspAllOf](doc//UserEmailGetRspAllOf.md)
 - [UserEmailGetRspAllOfData](doc//UserEmailGetRspAllOfData.md)
 - [UserGetRsp](doc//UserGetRsp.md)
 - [UserGetRspAllOf](doc//UserGetRspAllOf.md)
 - [UserListRsp](doc//UserListRsp.md)
 - [UserListRspAllOf](doc//UserListRspAllOf.md)
 - [UserListRspAllOfData](doc//UserListRspAllOfData.md)
 - [UserPhoneNumber](doc//UserPhoneNumber.md)
 - [UserPhoneNumberCreateReq](doc//UserPhoneNumberCreateReq.md)
 - [UserPhoneNumberCreateRsp](doc//UserPhoneNumberCreateRsp.md)
 - [UserPhoneNumberCreateRspAllOf](doc//UserPhoneNumberCreateRspAllOf.md)
 - [UserPhoneNumberCreateRspAllOfData](doc//UserPhoneNumberCreateRspAllOfData.md)
 - [UserPhoneNumberDeleteReq](doc//UserPhoneNumberDeleteReq.md)
 - [UserPhoneNumberGetRsp](doc//UserPhoneNumberGetRsp.md)
 - [UserPhoneNumberGetRspAllOf](doc//UserPhoneNumberGetRspAllOf.md)
 - [UserPhoneNumberGetRspAllOfData](doc//UserPhoneNumberGetRspAllOfData.md)
 - [UserStats](doc//UserStats.md)
 - [UserStatsListRsp](doc//UserStatsListRsp.md)
 - [UserStatsListRspAllOf](doc//UserStatsListRspAllOf.md)
 - [UserStatsListRspAllOfData](doc//UserStatsListRspAllOfData.md)
 - [UserUpdateReq](doc//UserUpdateReq.md)
 - [UserUpdateRsp](doc//UserUpdateRsp.md)
 - [UserUpdateRspAllOf](doc//UserUpdateRspAllOf.md)
 - [ValidateEmailReq](doc//ValidateEmailReq.md)
 - [ValidateEmailRsp](doc//ValidateEmailRsp.md)
 - [ValidateEmailRspAllOf](doc//ValidateEmailRspAllOf.md)
 - [ValidatePhoneNumberReq](doc//ValidatePhoneNumberReq.md)
 - [ValidatePhoneNumberRsp](doc//ValidatePhoneNumberRsp.md)
 - [ValidatePhoneNumberRspAllOf](doc//ValidatePhoneNumberRspAllOf.md)
 - [ValidationEmail](doc//ValidationEmail.md)
 - [ValidationPhoneNumber](doc//ValidationPhoneNumber.md)
 - [WebAuthnAssociateStartReq](doc//WebAuthnAssociateStartReq.md)
 - [WebAuthnAssociateStartRsp](doc//WebAuthnAssociateStartRsp.md)
 - [WebAuthnAuthenticateFinishRsp](doc//WebAuthnAuthenticateFinishRsp.md)
 - [WebAuthnAuthenticateFinishRspAllOf](doc//WebAuthnAuthenticateFinishRspAllOf.md)
 - [WebAuthnAuthenticateStartReq](doc//WebAuthnAuthenticateStartReq.md)
 - [WebAuthnAuthenticateStartRsp](doc//WebAuthnAuthenticateStartRsp.md)
 - [WebAuthnAuthenticateStartRspAllOf](doc//WebAuthnAuthenticateStartRspAllOf.md)
 - [WebAuthnAuthenticateSuccess](doc//WebAuthnAuthenticateSuccess.md)
 - [WebAuthnAuthenticateSuccessAllOf](doc//WebAuthnAuthenticateSuccessAllOf.md)
 - [WebAuthnAuthenticatorUpdateReq](doc//WebAuthnAuthenticatorUpdateReq.md)
 - [WebAuthnCredentialExistsReq](doc//WebAuthnCredentialExistsReq.md)
 - [WebAuthnCredentialExistsRsp](doc//WebAuthnCredentialExistsRsp.md)
 - [WebAuthnCredentialExistsRspAllOf](doc//WebAuthnCredentialExistsRspAllOf.md)
 - [WebAuthnCredentialReq](doc//WebAuthnCredentialReq.md)
 - [WebAuthnCredentialRsp](doc//WebAuthnCredentialRsp.md)
 - [WebAuthnCredentialRspAllOf](doc//WebAuthnCredentialRspAllOf.md)
 - [WebAuthnFinishReq](doc//WebAuthnFinishReq.md)
 - [WebAuthnMediationStartReq](doc//WebAuthnMediationStartReq.md)
 - [WebAuthnMediationStartRsp](doc//WebAuthnMediationStartRsp.md)
 - [WebAuthnMediationStartRspAllOf](doc//WebAuthnMediationStartRspAllOf.md)
 - [WebAuthnRegisterFinishRsp](doc//WebAuthnRegisterFinishRsp.md)
 - [WebAuthnRegisterFinishRspAllOf](doc//WebAuthnRegisterFinishRspAllOf.md)
 - [WebAuthnRegisterStartReq](doc//WebAuthnRegisterStartReq.md)
 - [WebAuthnRegisterStartRsp](doc//WebAuthnRegisterStartRsp.md)
 - [WebAuthnRegisterStartRspAllOf](doc//WebAuthnRegisterStartRspAllOf.md)
 - [WebauthnSettingCreate](doc//WebauthnSettingCreate.md)
 - [WebauthnSettingCreateReq](doc//WebauthnSettingCreateReq.md)
 - [WebauthnSettingCreateReqAllOf](doc//WebauthnSettingCreateReqAllOf.md)
 - [WebauthnSettingCreateRsp](doc//WebauthnSettingCreateRsp.md)
 - [WebauthnSettingDeleteReq](doc//WebauthnSettingDeleteReq.md)
 - [WebauthnSettingGetRsp](doc//WebauthnSettingGetRsp.md)
 - [WebauthnSettingItem](doc//WebauthnSettingItem.md)
 - [WebauthnSettingItemAllOf](doc//WebauthnSettingItemAllOf.md)
 - [WebauthnSettingListRsp](doc//WebauthnSettingListRsp.md)
 - [WebauthnSettingListRspAllOf](doc//WebauthnSettingListRspAllOf.md)
 - [WebauthnSettingUpdateReq](doc//WebauthnSettingUpdateReq.md)
 - [WebauthnSettingUpdateRsp](doc//WebauthnSettingUpdateRsp.md)
 - [WebhookLog](doc//WebhookLog.md)
 - [WebhookLogsListRsp](doc//WebhookLogsListRsp.md)
 - [WebhookLogsListRspAllOf](doc//WebhookLogsListRspAllOf.md)
 - [WebhookLogsListRspAllOfData](doc//WebhookLogsListRspAllOfData.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### basicAuth

- **Type**: HTTP Basic authentication

### bearerAuth

- **Type**: HTTP Bearer authentication

### projectID

- **Type**: API key
- **API key parameter name**: X-Corbado-ProjectID
- **Location**: HTTP header


## Author

support@corbado.com

