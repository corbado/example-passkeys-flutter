//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectConfigSaveReq {
  /// Returns a new [ProjectConfigSaveReq] instance.
  ProjectConfigSaveReq({
    this.wizard,
    this.externalName,
    this.appType,
    this.productKey,
    this.emailFrom,
    this.smsFrom,
    this.externalApplicationProtocolVersion,
    this.webhookURL,
    this.webhookUsername,
    this.webhookPassword,
    this.webhookTestInvalidUsername,
    this.webhookTestValidUsername,
    this.webhookTestValidPassword,
    this.externalApplicationUsername,
    this.externalApplicationPassword,
    this.legacyAuthMethodsUrl,
    this.passwordVerifyUrl,
    this.authSuccessRedirectUrl,
    this.passwordResetUrl,
    this.allowUserRegistration,
    this.allowIPStickiness,
    this.passkeyAppendInterval,
    this.fallbackLanguage,
    this.autoDetectLanguage,
    this.integrationModeHosted,
    this.integrationModeAPI,
    this.integrationModeWebComponent,
    this.hasExistingUsers,
    this.hasVerifiedSession,
    this.hasGeneratedSession,
    this.hasStartedUsingPasskeys,
    this.hasStartedUsingSessions,
    this.applicationUrl,
    this.useCli,
    this.doubleOptIn,
    this.userFullNameRequired,
    this.webauthnRPID,
    this.domain,
    this.environment,
    this.frontendFramework,
    this.webComponentDebug,
    this.smtpUseCustom,
    this.smtpHost,
    this.smtpPort,
    this.smtpUsername,
    this.smtpPassword,
    this.supportEmail,
    this.requestID,
    this.clientInfo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? wizard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalName;

  ProjectConfigSaveReqAppTypeEnum? appType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smsFrom;

  /// Defines which version of webhook is used
  ProjectConfigSaveReqExternalApplicationProtocolVersionEnum? externalApplicationProtocolVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookTestInvalidUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookTestValidUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookTestValidPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalApplicationUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalApplicationPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? legacyAuthMethodsUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordVerifyUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authSuccessRedirectUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordResetUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowUserRegistration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowIPStickiness;

  ProjectConfigSaveReqPasskeyAppendIntervalEnum? passkeyAppendInterval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fallbackLanguage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoDetectLanguage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? integrationModeHosted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? integrationModeAPI;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? integrationModeWebComponent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasExistingUsers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasVerifiedSession;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasGeneratedSession;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasStartedUsingPasskeys;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasStartedUsingSessions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? applicationUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useCli;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? doubleOptIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? userFullNameRequired;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webauthnRPID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ProjectConfigSaveReqEnvironmentEnum? environment;

  ProjectConfigSaveReqFrontendFrameworkEnum? frontendFramework;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webComponentDebug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? smtpUseCustom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smtpHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? smtpPort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smtpUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smtpPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supportEmail;

  /// Unique ID of request, you can provide your own while making the request, if not the ID will be randomly generated on server side
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClientInfo? clientInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectConfigSaveReq &&
     other.wizard == wizard &&
     other.externalName == externalName &&
     other.appType == appType &&
     other.productKey == productKey &&
     other.emailFrom == emailFrom &&
     other.smsFrom == smsFrom &&
     other.externalApplicationProtocolVersion == externalApplicationProtocolVersion &&
     other.webhookURL == webhookURL &&
     other.webhookUsername == webhookUsername &&
     other.webhookPassword == webhookPassword &&
     other.webhookTestInvalidUsername == webhookTestInvalidUsername &&
     other.webhookTestValidUsername == webhookTestValidUsername &&
     other.webhookTestValidPassword == webhookTestValidPassword &&
     other.externalApplicationUsername == externalApplicationUsername &&
     other.externalApplicationPassword == externalApplicationPassword &&
     other.legacyAuthMethodsUrl == legacyAuthMethodsUrl &&
     other.passwordVerifyUrl == passwordVerifyUrl &&
     other.authSuccessRedirectUrl == authSuccessRedirectUrl &&
     other.passwordResetUrl == passwordResetUrl &&
     other.allowUserRegistration == allowUserRegistration &&
     other.allowIPStickiness == allowIPStickiness &&
     other.passkeyAppendInterval == passkeyAppendInterval &&
     other.fallbackLanguage == fallbackLanguage &&
     other.autoDetectLanguage == autoDetectLanguage &&
     other.integrationModeHosted == integrationModeHosted &&
     other.integrationModeAPI == integrationModeAPI &&
     other.integrationModeWebComponent == integrationModeWebComponent &&
     other.hasExistingUsers == hasExistingUsers &&
     other.hasVerifiedSession == hasVerifiedSession &&
     other.hasGeneratedSession == hasGeneratedSession &&
     other.hasStartedUsingPasskeys == hasStartedUsingPasskeys &&
     other.hasStartedUsingSessions == hasStartedUsingSessions &&
     other.applicationUrl == applicationUrl &&
     other.useCli == useCli &&
     other.doubleOptIn == doubleOptIn &&
     other.userFullNameRequired == userFullNameRequired &&
     other.webauthnRPID == webauthnRPID &&
     other.domain == domain &&
     other.environment == environment &&
     other.frontendFramework == frontendFramework &&
     other.webComponentDebug == webComponentDebug &&
     other.smtpUseCustom == smtpUseCustom &&
     other.smtpHost == smtpHost &&
     other.smtpPort == smtpPort &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword &&
     other.supportEmail == supportEmail &&
     other.requestID == requestID &&
     other.clientInfo == clientInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (wizard == null ? 0 : wizard!.hashCode) +
    (externalName == null ? 0 : externalName!.hashCode) +
    (appType == null ? 0 : appType!.hashCode) +
    (productKey == null ? 0 : productKey!.hashCode) +
    (emailFrom == null ? 0 : emailFrom!.hashCode) +
    (smsFrom == null ? 0 : smsFrom!.hashCode) +
    (externalApplicationProtocolVersion == null ? 0 : externalApplicationProtocolVersion!.hashCode) +
    (webhookURL == null ? 0 : webhookURL!.hashCode) +
    (webhookUsername == null ? 0 : webhookUsername!.hashCode) +
    (webhookPassword == null ? 0 : webhookPassword!.hashCode) +
    (webhookTestInvalidUsername == null ? 0 : webhookTestInvalidUsername!.hashCode) +
    (webhookTestValidUsername == null ? 0 : webhookTestValidUsername!.hashCode) +
    (webhookTestValidPassword == null ? 0 : webhookTestValidPassword!.hashCode) +
    (externalApplicationUsername == null ? 0 : externalApplicationUsername!.hashCode) +
    (externalApplicationPassword == null ? 0 : externalApplicationPassword!.hashCode) +
    (legacyAuthMethodsUrl == null ? 0 : legacyAuthMethodsUrl!.hashCode) +
    (passwordVerifyUrl == null ? 0 : passwordVerifyUrl!.hashCode) +
    (authSuccessRedirectUrl == null ? 0 : authSuccessRedirectUrl!.hashCode) +
    (passwordResetUrl == null ? 0 : passwordResetUrl!.hashCode) +
    (allowUserRegistration == null ? 0 : allowUserRegistration!.hashCode) +
    (allowIPStickiness == null ? 0 : allowIPStickiness!.hashCode) +
    (passkeyAppendInterval == null ? 0 : passkeyAppendInterval!.hashCode) +
    (fallbackLanguage == null ? 0 : fallbackLanguage!.hashCode) +
    (autoDetectLanguage == null ? 0 : autoDetectLanguage!.hashCode) +
    (integrationModeHosted == null ? 0 : integrationModeHosted!.hashCode) +
    (integrationModeAPI == null ? 0 : integrationModeAPI!.hashCode) +
    (integrationModeWebComponent == null ? 0 : integrationModeWebComponent!.hashCode) +
    (hasExistingUsers == null ? 0 : hasExistingUsers!.hashCode) +
    (hasVerifiedSession == null ? 0 : hasVerifiedSession!.hashCode) +
    (hasGeneratedSession == null ? 0 : hasGeneratedSession!.hashCode) +
    (hasStartedUsingPasskeys == null ? 0 : hasStartedUsingPasskeys!.hashCode) +
    (hasStartedUsingSessions == null ? 0 : hasStartedUsingSessions!.hashCode) +
    (applicationUrl == null ? 0 : applicationUrl!.hashCode) +
    (useCli == null ? 0 : useCli!.hashCode) +
    (doubleOptIn == null ? 0 : doubleOptIn!.hashCode) +
    (userFullNameRequired == null ? 0 : userFullNameRequired!.hashCode) +
    (webauthnRPID == null ? 0 : webauthnRPID!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (frontendFramework == null ? 0 : frontendFramework!.hashCode) +
    (webComponentDebug == null ? 0 : webComponentDebug!.hashCode) +
    (smtpUseCustom == null ? 0 : smtpUseCustom!.hashCode) +
    (smtpHost == null ? 0 : smtpHost!.hashCode) +
    (smtpPort == null ? 0 : smtpPort!.hashCode) +
    (smtpUsername == null ? 0 : smtpUsername!.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword!.hashCode) +
    (supportEmail == null ? 0 : supportEmail!.hashCode) +
    (requestID == null ? 0 : requestID!.hashCode) +
    (clientInfo == null ? 0 : clientInfo!.hashCode);

  @override
  String toString() => 'ProjectConfigSaveReq[wizard=$wizard, externalName=$externalName, appType=$appType, productKey=$productKey, emailFrom=$emailFrom, smsFrom=$smsFrom, externalApplicationProtocolVersion=$externalApplicationProtocolVersion, webhookURL=$webhookURL, webhookUsername=$webhookUsername, webhookPassword=$webhookPassword, webhookTestInvalidUsername=$webhookTestInvalidUsername, webhookTestValidUsername=$webhookTestValidUsername, webhookTestValidPassword=$webhookTestValidPassword, externalApplicationUsername=$externalApplicationUsername, externalApplicationPassword=$externalApplicationPassword, legacyAuthMethodsUrl=$legacyAuthMethodsUrl, passwordVerifyUrl=$passwordVerifyUrl, authSuccessRedirectUrl=$authSuccessRedirectUrl, passwordResetUrl=$passwordResetUrl, allowUserRegistration=$allowUserRegistration, allowIPStickiness=$allowIPStickiness, passkeyAppendInterval=$passkeyAppendInterval, fallbackLanguage=$fallbackLanguage, autoDetectLanguage=$autoDetectLanguage, integrationModeHosted=$integrationModeHosted, integrationModeAPI=$integrationModeAPI, integrationModeWebComponent=$integrationModeWebComponent, hasExistingUsers=$hasExistingUsers, hasVerifiedSession=$hasVerifiedSession, hasGeneratedSession=$hasGeneratedSession, hasStartedUsingPasskeys=$hasStartedUsingPasskeys, hasStartedUsingSessions=$hasStartedUsingSessions, applicationUrl=$applicationUrl, useCli=$useCli, doubleOptIn=$doubleOptIn, userFullNameRequired=$userFullNameRequired, webauthnRPID=$webauthnRPID, domain=$domain, environment=$environment, frontendFramework=$frontendFramework, webComponentDebug=$webComponentDebug, smtpUseCustom=$smtpUseCustom, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, supportEmail=$supportEmail, requestID=$requestID, clientInfo=$clientInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.wizard != null) {
      json[r'wizard'] = this.wizard;
    } else {
      json[r'wizard'] = null;
    }
    if (this.externalName != null) {
      json[r'externalName'] = this.externalName;
    } else {
      json[r'externalName'] = null;
    }
    if (this.appType != null) {
      json[r'appType'] = this.appType;
    } else {
      json[r'appType'] = null;
    }
    if (this.productKey != null) {
      json[r'productKey'] = this.productKey;
    } else {
      json[r'productKey'] = null;
    }
    if (this.emailFrom != null) {
      json[r'emailFrom'] = this.emailFrom;
    } else {
      json[r'emailFrom'] = null;
    }
    if (this.smsFrom != null) {
      json[r'smsFrom'] = this.smsFrom;
    } else {
      json[r'smsFrom'] = null;
    }
    if (this.externalApplicationProtocolVersion != null) {
      json[r'externalApplicationProtocolVersion'] = this.externalApplicationProtocolVersion;
    } else {
      json[r'externalApplicationProtocolVersion'] = null;
    }
    if (this.webhookURL != null) {
      json[r'webhookURL'] = this.webhookURL;
    } else {
      json[r'webhookURL'] = null;
    }
    if (this.webhookUsername != null) {
      json[r'webhookUsername'] = this.webhookUsername;
    } else {
      json[r'webhookUsername'] = null;
    }
    if (this.webhookPassword != null) {
      json[r'webhookPassword'] = this.webhookPassword;
    } else {
      json[r'webhookPassword'] = null;
    }
    if (this.webhookTestInvalidUsername != null) {
      json[r'webhookTestInvalidUsername'] = this.webhookTestInvalidUsername;
    } else {
      json[r'webhookTestInvalidUsername'] = null;
    }
    if (this.webhookTestValidUsername != null) {
      json[r'webhookTestValidUsername'] = this.webhookTestValidUsername;
    } else {
      json[r'webhookTestValidUsername'] = null;
    }
    if (this.webhookTestValidPassword != null) {
      json[r'webhookTestValidPassword'] = this.webhookTestValidPassword;
    } else {
      json[r'webhookTestValidPassword'] = null;
    }
    if (this.externalApplicationUsername != null) {
      json[r'externalApplicationUsername'] = this.externalApplicationUsername;
    } else {
      json[r'externalApplicationUsername'] = null;
    }
    if (this.externalApplicationPassword != null) {
      json[r'externalApplicationPassword'] = this.externalApplicationPassword;
    } else {
      json[r'externalApplicationPassword'] = null;
    }
    if (this.legacyAuthMethodsUrl != null) {
      json[r'legacyAuthMethodsUrl'] = this.legacyAuthMethodsUrl;
    } else {
      json[r'legacyAuthMethodsUrl'] = null;
    }
    if (this.passwordVerifyUrl != null) {
      json[r'passwordVerifyUrl'] = this.passwordVerifyUrl;
    } else {
      json[r'passwordVerifyUrl'] = null;
    }
    if (this.authSuccessRedirectUrl != null) {
      json[r'authSuccessRedirectUrl'] = this.authSuccessRedirectUrl;
    } else {
      json[r'authSuccessRedirectUrl'] = null;
    }
    if (this.passwordResetUrl != null) {
      json[r'passwordResetUrl'] = this.passwordResetUrl;
    } else {
      json[r'passwordResetUrl'] = null;
    }
    if (this.allowUserRegistration != null) {
      json[r'allowUserRegistration'] = this.allowUserRegistration;
    } else {
      json[r'allowUserRegistration'] = null;
    }
    if (this.allowIPStickiness != null) {
      json[r'allowIPStickiness'] = this.allowIPStickiness;
    } else {
      json[r'allowIPStickiness'] = null;
    }
    if (this.passkeyAppendInterval != null) {
      json[r'passkeyAppendInterval'] = this.passkeyAppendInterval;
    } else {
      json[r'passkeyAppendInterval'] = null;
    }
    if (this.fallbackLanguage != null) {
      json[r'fallbackLanguage'] = this.fallbackLanguage;
    } else {
      json[r'fallbackLanguage'] = null;
    }
    if (this.autoDetectLanguage != null) {
      json[r'autoDetectLanguage'] = this.autoDetectLanguage;
    } else {
      json[r'autoDetectLanguage'] = null;
    }
    if (this.integrationModeHosted != null) {
      json[r'integrationModeHosted'] = this.integrationModeHosted;
    } else {
      json[r'integrationModeHosted'] = null;
    }
    if (this.integrationModeAPI != null) {
      json[r'integrationModeAPI'] = this.integrationModeAPI;
    } else {
      json[r'integrationModeAPI'] = null;
    }
    if (this.integrationModeWebComponent != null) {
      json[r'integrationModeWebComponent'] = this.integrationModeWebComponent;
    } else {
      json[r'integrationModeWebComponent'] = null;
    }
    if (this.hasExistingUsers != null) {
      json[r'hasExistingUsers'] = this.hasExistingUsers;
    } else {
      json[r'hasExistingUsers'] = null;
    }
    if (this.hasVerifiedSession != null) {
      json[r'hasVerifiedSession'] = this.hasVerifiedSession;
    } else {
      json[r'hasVerifiedSession'] = null;
    }
    if (this.hasGeneratedSession != null) {
      json[r'hasGeneratedSession'] = this.hasGeneratedSession;
    } else {
      json[r'hasGeneratedSession'] = null;
    }
    if (this.hasStartedUsingPasskeys != null) {
      json[r'hasStartedUsingPasskeys'] = this.hasStartedUsingPasskeys;
    } else {
      json[r'hasStartedUsingPasskeys'] = null;
    }
    if (this.hasStartedUsingSessions != null) {
      json[r'hasStartedUsingSessions'] = this.hasStartedUsingSessions;
    } else {
      json[r'hasStartedUsingSessions'] = null;
    }
    if (this.applicationUrl != null) {
      json[r'applicationUrl'] = this.applicationUrl;
    } else {
      json[r'applicationUrl'] = null;
    }
    if (this.useCli != null) {
      json[r'useCli'] = this.useCli;
    } else {
      json[r'useCli'] = null;
    }
    if (this.doubleOptIn != null) {
      json[r'doubleOptIn'] = this.doubleOptIn;
    } else {
      json[r'doubleOptIn'] = null;
    }
    if (this.userFullNameRequired != null) {
      json[r'userFullNameRequired'] = this.userFullNameRequired;
    } else {
      json[r'userFullNameRequired'] = null;
    }
    if (this.webauthnRPID != null) {
      json[r'webauthnRPID'] = this.webauthnRPID;
    } else {
      json[r'webauthnRPID'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.frontendFramework != null) {
      json[r'frontendFramework'] = this.frontendFramework;
    } else {
      json[r'frontendFramework'] = null;
    }
    if (this.webComponentDebug != null) {
      json[r'webComponentDebug'] = this.webComponentDebug;
    } else {
      json[r'webComponentDebug'] = null;
    }
    if (this.smtpUseCustom != null) {
      json[r'smtpUseCustom'] = this.smtpUseCustom;
    } else {
      json[r'smtpUseCustom'] = null;
    }
    if (this.smtpHost != null) {
      json[r'smtpHost'] = this.smtpHost;
    } else {
      json[r'smtpHost'] = null;
    }
    if (this.smtpPort != null) {
      json[r'smtpPort'] = this.smtpPort;
    } else {
      json[r'smtpPort'] = null;
    }
    if (this.smtpUsername != null) {
      json[r'smtpUsername'] = this.smtpUsername;
    } else {
      json[r'smtpUsername'] = null;
    }
    if (this.smtpPassword != null) {
      json[r'smtpPassword'] = this.smtpPassword;
    } else {
      json[r'smtpPassword'] = null;
    }
    if (this.supportEmail != null) {
      json[r'supportEmail'] = this.supportEmail;
    } else {
      json[r'supportEmail'] = null;
    }
    if (this.requestID != null) {
      json[r'requestID'] = this.requestID;
    } else {
      json[r'requestID'] = null;
    }
    if (this.clientInfo != null) {
      json[r'clientInfo'] = this.clientInfo;
    } else {
      json[r'clientInfo'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectConfigSaveReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectConfigSaveReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectConfigSaveReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectConfigSaveReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectConfigSaveReq(
        wizard: mapValueOfType<bool>(json, r'wizard'),
        externalName: mapValueOfType<String>(json, r'externalName'),
        appType: ProjectConfigSaveReqAppTypeEnum.fromJson(json[r'appType']),
        productKey: mapValueOfType<String>(json, r'productKey'),
        emailFrom: mapValueOfType<String>(json, r'emailFrom'),
        smsFrom: mapValueOfType<String>(json, r'smsFrom'),
        externalApplicationProtocolVersion: ProjectConfigSaveReqExternalApplicationProtocolVersionEnum.fromJson(json[r'externalApplicationProtocolVersion']),
        webhookURL: mapValueOfType<String>(json, r'webhookURL'),
        webhookUsername: mapValueOfType<String>(json, r'webhookUsername'),
        webhookPassword: mapValueOfType<String>(json, r'webhookPassword'),
        webhookTestInvalidUsername: mapValueOfType<String>(json, r'webhookTestInvalidUsername'),
        webhookTestValidUsername: mapValueOfType<String>(json, r'webhookTestValidUsername'),
        webhookTestValidPassword: mapValueOfType<String>(json, r'webhookTestValidPassword'),
        externalApplicationUsername: mapValueOfType<String>(json, r'externalApplicationUsername'),
        externalApplicationPassword: mapValueOfType<String>(json, r'externalApplicationPassword'),
        legacyAuthMethodsUrl: mapValueOfType<String>(json, r'legacyAuthMethodsUrl'),
        passwordVerifyUrl: mapValueOfType<String>(json, r'passwordVerifyUrl'),
        authSuccessRedirectUrl: mapValueOfType<String>(json, r'authSuccessRedirectUrl'),
        passwordResetUrl: mapValueOfType<String>(json, r'passwordResetUrl'),
        allowUserRegistration: mapValueOfType<bool>(json, r'allowUserRegistration'),
        allowIPStickiness: mapValueOfType<bool>(json, r'allowIPStickiness'),
        passkeyAppendInterval: ProjectConfigSaveReqPasskeyAppendIntervalEnum.fromJson(json[r'passkeyAppendInterval']),
        fallbackLanguage: mapValueOfType<String>(json, r'fallbackLanguage'),
        autoDetectLanguage: mapValueOfType<bool>(json, r'autoDetectLanguage'),
        integrationModeHosted: mapValueOfType<bool>(json, r'integrationModeHosted'),
        integrationModeAPI: mapValueOfType<bool>(json, r'integrationModeAPI'),
        integrationModeWebComponent: mapValueOfType<bool>(json, r'integrationModeWebComponent'),
        hasExistingUsers: mapValueOfType<bool>(json, r'hasExistingUsers'),
        hasVerifiedSession: mapValueOfType<bool>(json, r'hasVerifiedSession'),
        hasGeneratedSession: mapValueOfType<bool>(json, r'hasGeneratedSession'),
        hasStartedUsingPasskeys: mapValueOfType<bool>(json, r'hasStartedUsingPasskeys'),
        hasStartedUsingSessions: mapValueOfType<bool>(json, r'hasStartedUsingSessions'),
        applicationUrl: mapValueOfType<String>(json, r'applicationUrl'),
        useCli: mapValueOfType<bool>(json, r'useCli'),
        doubleOptIn: mapValueOfType<bool>(json, r'doubleOptIn'),
        userFullNameRequired: mapValueOfType<bool>(json, r'userFullNameRequired'),
        webauthnRPID: mapValueOfType<String>(json, r'webauthnRPID'),
        domain: mapValueOfType<String>(json, r'domain'),
        environment: ProjectConfigSaveReqEnvironmentEnum.fromJson(json[r'environment']),
        frontendFramework: ProjectConfigSaveReqFrontendFrameworkEnum.fromJson(json[r'frontendFramework']),
        webComponentDebug: mapValueOfType<bool>(json, r'webComponentDebug'),
        smtpUseCustom: mapValueOfType<bool>(json, r'smtpUseCustom'),
        smtpHost: mapValueOfType<String>(json, r'smtpHost'),
        smtpPort: mapValueOfType<int>(json, r'smtpPort'),
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername'),
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword'),
        supportEmail: mapValueOfType<String>(json, r'supportEmail'),
        requestID: mapValueOfType<String>(json, r'requestID'),
        clientInfo: ClientInfo.fromJson(json[r'clientInfo']),
      );
    }
    return null;
  }

  static List<ProjectConfigSaveReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigSaveReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigSaveReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectConfigSaveReq> mapFromJson(dynamic json) {
    final map = <String, ProjectConfigSaveReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectConfigSaveReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectConfigSaveReq-objects as value to a dart map
  static Map<String, List<ProjectConfigSaveReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectConfigSaveReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectConfigSaveReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ProjectConfigSaveReqAppTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigSaveReqAppTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const web = ProjectConfigSaveReqAppTypeEnum._(r'web');
  static const native_ = ProjectConfigSaveReqAppTypeEnum._(r'native');

  /// List of all possible values in this [enum][ProjectConfigSaveReqAppTypeEnum].
  static const values = <ProjectConfigSaveReqAppTypeEnum>[
    web,
    native_,
  ];

  static ProjectConfigSaveReqAppTypeEnum? fromJson(dynamic value) => ProjectConfigSaveReqAppTypeEnumTypeTransformer().decode(value);

  static List<ProjectConfigSaveReqAppTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigSaveReqAppTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigSaveReqAppTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigSaveReqAppTypeEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigSaveReqAppTypeEnum].
class ProjectConfigSaveReqAppTypeEnumTypeTransformer {
  factory ProjectConfigSaveReqAppTypeEnumTypeTransformer() => _instance ??= const ProjectConfigSaveReqAppTypeEnumTypeTransformer._();

  const ProjectConfigSaveReqAppTypeEnumTypeTransformer._();

  String encode(ProjectConfigSaveReqAppTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigSaveReqAppTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigSaveReqAppTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'web': return ProjectConfigSaveReqAppTypeEnum.web;
        case r'native': return ProjectConfigSaveReqAppTypeEnum.native_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigSaveReqAppTypeEnumTypeTransformer] instance.
  static ProjectConfigSaveReqAppTypeEnumTypeTransformer? _instance;
}


/// Defines which version of webhook is used
class ProjectConfigSaveReqExternalApplicationProtocolVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigSaveReqExternalApplicationProtocolVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const v1 = ProjectConfigSaveReqExternalApplicationProtocolVersionEnum._(r'v1');
  static const v2 = ProjectConfigSaveReqExternalApplicationProtocolVersionEnum._(r'v2');

  /// List of all possible values in this [enum][ProjectConfigSaveReqExternalApplicationProtocolVersionEnum].
  static const values = <ProjectConfigSaveReqExternalApplicationProtocolVersionEnum>[
    v1,
    v2,
  ];

  static ProjectConfigSaveReqExternalApplicationProtocolVersionEnum? fromJson(dynamic value) => ProjectConfigSaveReqExternalApplicationProtocolVersionEnumTypeTransformer().decode(value);

  static List<ProjectConfigSaveReqExternalApplicationProtocolVersionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigSaveReqExternalApplicationProtocolVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigSaveReqExternalApplicationProtocolVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigSaveReqExternalApplicationProtocolVersionEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigSaveReqExternalApplicationProtocolVersionEnum].
class ProjectConfigSaveReqExternalApplicationProtocolVersionEnumTypeTransformer {
  factory ProjectConfigSaveReqExternalApplicationProtocolVersionEnumTypeTransformer() => _instance ??= const ProjectConfigSaveReqExternalApplicationProtocolVersionEnumTypeTransformer._();

  const ProjectConfigSaveReqExternalApplicationProtocolVersionEnumTypeTransformer._();

  String encode(ProjectConfigSaveReqExternalApplicationProtocolVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigSaveReqExternalApplicationProtocolVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigSaveReqExternalApplicationProtocolVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'v1': return ProjectConfigSaveReqExternalApplicationProtocolVersionEnum.v1;
        case r'v2': return ProjectConfigSaveReqExternalApplicationProtocolVersionEnum.v2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigSaveReqExternalApplicationProtocolVersionEnumTypeTransformer] instance.
  static ProjectConfigSaveReqExternalApplicationProtocolVersionEnumTypeTransformer? _instance;
}



class ProjectConfigSaveReqPasskeyAppendIntervalEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigSaveReqPasskeyAppendIntervalEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n0d = ProjectConfigSaveReqPasskeyAppendIntervalEnum._(r'0d');
  static const n1d = ProjectConfigSaveReqPasskeyAppendIntervalEnum._(r'1d');
  static const n3d = ProjectConfigSaveReqPasskeyAppendIntervalEnum._(r'3d');
  static const n1w = ProjectConfigSaveReqPasskeyAppendIntervalEnum._(r'1w');
  static const n3w = ProjectConfigSaveReqPasskeyAppendIntervalEnum._(r'3w');
  static const n1m = ProjectConfigSaveReqPasskeyAppendIntervalEnum._(r'1m');
  static const n3m = ProjectConfigSaveReqPasskeyAppendIntervalEnum._(r'3m');

  /// List of all possible values in this [enum][ProjectConfigSaveReqPasskeyAppendIntervalEnum].
  static const values = <ProjectConfigSaveReqPasskeyAppendIntervalEnum>[
    n0d,
    n1d,
    n3d,
    n1w,
    n3w,
    n1m,
    n3m,
  ];

  static ProjectConfigSaveReqPasskeyAppendIntervalEnum? fromJson(dynamic value) => ProjectConfigSaveReqPasskeyAppendIntervalEnumTypeTransformer().decode(value);

  static List<ProjectConfigSaveReqPasskeyAppendIntervalEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigSaveReqPasskeyAppendIntervalEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigSaveReqPasskeyAppendIntervalEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigSaveReqPasskeyAppendIntervalEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigSaveReqPasskeyAppendIntervalEnum].
class ProjectConfigSaveReqPasskeyAppendIntervalEnumTypeTransformer {
  factory ProjectConfigSaveReqPasskeyAppendIntervalEnumTypeTransformer() => _instance ??= const ProjectConfigSaveReqPasskeyAppendIntervalEnumTypeTransformer._();

  const ProjectConfigSaveReqPasskeyAppendIntervalEnumTypeTransformer._();

  String encode(ProjectConfigSaveReqPasskeyAppendIntervalEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigSaveReqPasskeyAppendIntervalEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigSaveReqPasskeyAppendIntervalEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'0d': return ProjectConfigSaveReqPasskeyAppendIntervalEnum.n0d;
        case r'1d': return ProjectConfigSaveReqPasskeyAppendIntervalEnum.n1d;
        case r'3d': return ProjectConfigSaveReqPasskeyAppendIntervalEnum.n3d;
        case r'1w': return ProjectConfigSaveReqPasskeyAppendIntervalEnum.n1w;
        case r'3w': return ProjectConfigSaveReqPasskeyAppendIntervalEnum.n3w;
        case r'1m': return ProjectConfigSaveReqPasskeyAppendIntervalEnum.n1m;
        case r'3m': return ProjectConfigSaveReqPasskeyAppendIntervalEnum.n3m;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigSaveReqPasskeyAppendIntervalEnumTypeTransformer] instance.
  static ProjectConfigSaveReqPasskeyAppendIntervalEnumTypeTransformer? _instance;
}



class ProjectConfigSaveReqEnvironmentEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigSaveReqEnvironmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dev = ProjectConfigSaveReqEnvironmentEnum._(r'dev');
  static const prod = ProjectConfigSaveReqEnvironmentEnum._(r'prod');

  /// List of all possible values in this [enum][ProjectConfigSaveReqEnvironmentEnum].
  static const values = <ProjectConfigSaveReqEnvironmentEnum>[
    dev,
    prod,
  ];

  static ProjectConfigSaveReqEnvironmentEnum? fromJson(dynamic value) => ProjectConfigSaveReqEnvironmentEnumTypeTransformer().decode(value);

  static List<ProjectConfigSaveReqEnvironmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigSaveReqEnvironmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigSaveReqEnvironmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigSaveReqEnvironmentEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigSaveReqEnvironmentEnum].
class ProjectConfigSaveReqEnvironmentEnumTypeTransformer {
  factory ProjectConfigSaveReqEnvironmentEnumTypeTransformer() => _instance ??= const ProjectConfigSaveReqEnvironmentEnumTypeTransformer._();

  const ProjectConfigSaveReqEnvironmentEnumTypeTransformer._();

  String encode(ProjectConfigSaveReqEnvironmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigSaveReqEnvironmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigSaveReqEnvironmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'dev': return ProjectConfigSaveReqEnvironmentEnum.dev;
        case r'prod': return ProjectConfigSaveReqEnvironmentEnum.prod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigSaveReqEnvironmentEnumTypeTransformer] instance.
  static ProjectConfigSaveReqEnvironmentEnumTypeTransformer? _instance;
}



class ProjectConfigSaveReqFrontendFrameworkEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigSaveReqFrontendFrameworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const react = ProjectConfigSaveReqFrontendFrameworkEnum._(r'react');
  static const vuejs = ProjectConfigSaveReqFrontendFrameworkEnum._(r'vuejs');
  static const vanillajs = ProjectConfigSaveReqFrontendFrameworkEnum._(r'vanillajs');

  /// List of all possible values in this [enum][ProjectConfigSaveReqFrontendFrameworkEnum].
  static const values = <ProjectConfigSaveReqFrontendFrameworkEnum>[
    react,
    vuejs,
    vanillajs,
  ];

  static ProjectConfigSaveReqFrontendFrameworkEnum? fromJson(dynamic value) => ProjectConfigSaveReqFrontendFrameworkEnumTypeTransformer().decode(value);

  static List<ProjectConfigSaveReqFrontendFrameworkEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectConfigSaveReqFrontendFrameworkEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigSaveReqFrontendFrameworkEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigSaveReqFrontendFrameworkEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigSaveReqFrontendFrameworkEnum].
class ProjectConfigSaveReqFrontendFrameworkEnumTypeTransformer {
  factory ProjectConfigSaveReqFrontendFrameworkEnumTypeTransformer() => _instance ??= const ProjectConfigSaveReqFrontendFrameworkEnumTypeTransformer._();

  const ProjectConfigSaveReqFrontendFrameworkEnumTypeTransformer._();

  String encode(ProjectConfigSaveReqFrontendFrameworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigSaveReqFrontendFrameworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigSaveReqFrontendFrameworkEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'react': return ProjectConfigSaveReqFrontendFrameworkEnum.react;
        case r'vuejs': return ProjectConfigSaveReqFrontendFrameworkEnum.vuejs;
        case r'vanillajs': return ProjectConfigSaveReqFrontendFrameworkEnum.vanillajs;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigSaveReqFrontendFrameworkEnumTypeTransformer] instance.
  static ProjectConfigSaveReqFrontendFrameworkEnumTypeTransformer? _instance;
}


