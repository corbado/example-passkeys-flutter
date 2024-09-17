//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectConfig {
  /// Returns a new [ProjectConfig] instance.
  ProjectConfig({
    required this.projectID,
    required this.externalName,
    required this.emailFrom,
    required this.smsFrom,
    required this.fallbackLanguage,
    required this.autoDetectLanguage,
    required this.integrationModeHosted,
    required this.integrationModeAPI,
    required this.integrationModeWebComponent,
    required this.hasExistingUsers,
    required this.hasVerifiedSession,
    required this.hasGeneratedSession,
    required this.hasStartedUsingPasskeys,
    required this.hasStartedUsingSessions,
    required this.backendAPIUrl,
    required this.frontendAPIUrl,
    required this.applicationUrl,
    required this.useCli,
    required this.doubleOptIn,
    required this.userFullNameRequired,
    required this.webauthnRPID,
    required this.webComponentDebug,
    required this.created,
    required this.updated,
    required this.status,
    this.appType,
    this.productKey,
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
    this.cliSecret,
    this.environment,
    this.frontendFramework,
    this.domain,
    this.smtpUseCustom,
    this.smtpHost,
    this.smtpPort,
    this.smtpUsername,
    this.smtpPassword,
    this.supportEmail,
  });

  /// ID of project
  String projectID;

  String externalName;

  String emailFrom;

  String smsFrom;

  String fallbackLanguage;

  bool autoDetectLanguage;

  bool integrationModeHosted;

  bool integrationModeAPI;

  bool integrationModeWebComponent;

  bool hasExistingUsers;

  bool hasVerifiedSession;

  bool hasGeneratedSession;

  bool hasStartedUsingPasskeys;

  bool hasStartedUsingSessions;

  String backendAPIUrl;

  String frontendAPIUrl;

  String applicationUrl;

  bool useCli;

  bool doubleOptIn;

  bool userFullNameRequired;

  String webauthnRPID;

  bool webComponentDebug;

  /// Timestamp of when the entity was created in yyyy-MM-dd'T'HH:mm:ss format
  String created;

  /// Timestamp of when the entity was last updated in yyyy-MM-dd'T'HH:mm:ss format
  String updated;

  ProjectConfigStatusEnum status;

  ProjectConfigAppTypeEnum? appType;

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
  String? externalApplicationProtocolVersion;

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

  ProjectConfigPasskeyAppendIntervalEnum? passkeyAppendInterval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cliSecret;

  ProjectConfigEnvironmentEnum? environment;

  ProjectConfigFrontendFrameworkEnum? frontendFramework;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectConfig &&
          other.projectID == projectID &&
          other.externalName == externalName &&
          other.emailFrom == emailFrom &&
          other.smsFrom == smsFrom &&
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
          other.backendAPIUrl == backendAPIUrl &&
          other.frontendAPIUrl == frontendAPIUrl &&
          other.applicationUrl == applicationUrl &&
          other.useCli == useCli &&
          other.doubleOptIn == doubleOptIn &&
          other.userFullNameRequired == userFullNameRequired &&
          other.webauthnRPID == webauthnRPID &&
          other.webComponentDebug == webComponentDebug &&
          other.created == created &&
          other.updated == updated &&
          other.status == status &&
          other.appType == appType &&
          other.productKey == productKey &&
          other.externalApplicationProtocolVersion ==
              externalApplicationProtocolVersion &&
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
          other.cliSecret == cliSecret &&
          other.environment == environment &&
          other.frontendFramework == frontendFramework &&
          other.domain == domain &&
          other.smtpUseCustom == smtpUseCustom &&
          other.smtpHost == smtpHost &&
          other.smtpPort == smtpPort &&
          other.smtpUsername == smtpUsername &&
          other.smtpPassword == smtpPassword &&
          other.supportEmail == supportEmail;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (projectID.hashCode) +
      (externalName.hashCode) +
      (emailFrom.hashCode) +
      (smsFrom.hashCode) +
      (fallbackLanguage.hashCode) +
      (autoDetectLanguage.hashCode) +
      (integrationModeHosted.hashCode) +
      (integrationModeAPI.hashCode) +
      (integrationModeWebComponent.hashCode) +
      (hasExistingUsers.hashCode) +
      (hasVerifiedSession.hashCode) +
      (hasGeneratedSession.hashCode) +
      (hasStartedUsingPasskeys.hashCode) +
      (hasStartedUsingSessions.hashCode) +
      (backendAPIUrl.hashCode) +
      (frontendAPIUrl.hashCode) +
      (applicationUrl.hashCode) +
      (useCli.hashCode) +
      (doubleOptIn.hashCode) +
      (userFullNameRequired.hashCode) +
      (webauthnRPID.hashCode) +
      (webComponentDebug.hashCode) +
      (created.hashCode) +
      (updated.hashCode) +
      (status.hashCode) +
      (appType == null ? 0 : appType!.hashCode) +
      (productKey == null ? 0 : productKey!.hashCode) +
      (externalApplicationProtocolVersion == null
          ? 0
          : externalApplicationProtocolVersion!.hashCode) +
      (webhookURL == null ? 0 : webhookURL!.hashCode) +
      (webhookUsername == null ? 0 : webhookUsername!.hashCode) +
      (webhookPassword == null ? 0 : webhookPassword!.hashCode) +
      (webhookTestInvalidUsername == null
          ? 0
          : webhookTestInvalidUsername!.hashCode) +
      (webhookTestValidUsername == null
          ? 0
          : webhookTestValidUsername!.hashCode) +
      (webhookTestValidPassword == null
          ? 0
          : webhookTestValidPassword!.hashCode) +
      (externalApplicationUsername == null
          ? 0
          : externalApplicationUsername!.hashCode) +
      (externalApplicationPassword == null
          ? 0
          : externalApplicationPassword!.hashCode) +
      (legacyAuthMethodsUrl == null ? 0 : legacyAuthMethodsUrl!.hashCode) +
      (passwordVerifyUrl == null ? 0 : passwordVerifyUrl!.hashCode) +
      (authSuccessRedirectUrl == null ? 0 : authSuccessRedirectUrl!.hashCode) +
      (passwordResetUrl == null ? 0 : passwordResetUrl!.hashCode) +
      (allowUserRegistration == null ? 0 : allowUserRegistration!.hashCode) +
      (allowIPStickiness == null ? 0 : allowIPStickiness!.hashCode) +
      (passkeyAppendInterval == null ? 0 : passkeyAppendInterval!.hashCode) +
      (cliSecret == null ? 0 : cliSecret!.hashCode) +
      (environment == null ? 0 : environment!.hashCode) +
      (frontendFramework == null ? 0 : frontendFramework!.hashCode) +
      (domain == null ? 0 : domain!.hashCode) +
      (smtpUseCustom == null ? 0 : smtpUseCustom!.hashCode) +
      (smtpHost == null ? 0 : smtpHost!.hashCode) +
      (smtpPort == null ? 0 : smtpPort!.hashCode) +
      (smtpUsername == null ? 0 : smtpUsername!.hashCode) +
      (smtpPassword == null ? 0 : smtpPassword!.hashCode) +
      (supportEmail == null ? 0 : supportEmail!.hashCode);

  @override
  String toString() =>
      'ProjectConfig[projectID=$projectID, externalName=$externalName, emailFrom=$emailFrom, smsFrom=$smsFrom, fallbackLanguage=$fallbackLanguage, autoDetectLanguage=$autoDetectLanguage, integrationModeHosted=$integrationModeHosted, integrationModeAPI=$integrationModeAPI, integrationModeWebComponent=$integrationModeWebComponent, hasExistingUsers=$hasExistingUsers, hasVerifiedSession=$hasVerifiedSession, hasGeneratedSession=$hasGeneratedSession, hasStartedUsingPasskeys=$hasStartedUsingPasskeys, hasStartedUsingSessions=$hasStartedUsingSessions, backendAPIUrl=$backendAPIUrl, frontendAPIUrl=$frontendAPIUrl, applicationUrl=$applicationUrl, useCli=$useCli, doubleOptIn=$doubleOptIn, userFullNameRequired=$userFullNameRequired, webauthnRPID=$webauthnRPID, webComponentDebug=$webComponentDebug, created=$created, updated=$updated, status=$status, appType=$appType, productKey=$productKey, externalApplicationProtocolVersion=$externalApplicationProtocolVersion, webhookURL=$webhookURL, webhookUsername=$webhookUsername, webhookPassword=$webhookPassword, webhookTestInvalidUsername=$webhookTestInvalidUsername, webhookTestValidUsername=$webhookTestValidUsername, webhookTestValidPassword=$webhookTestValidPassword, externalApplicationUsername=$externalApplicationUsername, externalApplicationPassword=$externalApplicationPassword, legacyAuthMethodsUrl=$legacyAuthMethodsUrl, passwordVerifyUrl=$passwordVerifyUrl, authSuccessRedirectUrl=$authSuccessRedirectUrl, passwordResetUrl=$passwordResetUrl, allowUserRegistration=$allowUserRegistration, allowIPStickiness=$allowIPStickiness, passkeyAppendInterval=$passkeyAppendInterval, cliSecret=$cliSecret, environment=$environment, frontendFramework=$frontendFramework, domain=$domain, smtpUseCustom=$smtpUseCustom, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, supportEmail=$supportEmail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'projectID'] = this.projectID;
    json[r'externalName'] = this.externalName;
    json[r'emailFrom'] = this.emailFrom;
    json[r'smsFrom'] = this.smsFrom;
    json[r'fallbackLanguage'] = this.fallbackLanguage;
    json[r'autoDetectLanguage'] = this.autoDetectLanguage;
    json[r'integrationModeHosted'] = this.integrationModeHosted;
    json[r'integrationModeAPI'] = this.integrationModeAPI;
    json[r'integrationModeWebComponent'] = this.integrationModeWebComponent;
    json[r'hasExistingUsers'] = this.hasExistingUsers;
    json[r'hasVerifiedSession'] = this.hasVerifiedSession;
    json[r'hasGeneratedSession'] = this.hasGeneratedSession;
    json[r'hasStartedUsingPasskeys'] = this.hasStartedUsingPasskeys;
    json[r'hasStartedUsingSessions'] = this.hasStartedUsingSessions;
    json[r'backendAPIUrl'] = this.backendAPIUrl;
    json[r'frontendAPIUrl'] = this.frontendAPIUrl;
    json[r'applicationUrl'] = this.applicationUrl;
    json[r'useCli'] = this.useCli;
    json[r'doubleOptIn'] = this.doubleOptIn;
    json[r'userFullNameRequired'] = this.userFullNameRequired;
    json[r'webauthnRPID'] = this.webauthnRPID;
    json[r'webComponentDebug'] = this.webComponentDebug;
    json[r'created'] = this.created;
    json[r'updated'] = this.updated;
    json[r'status'] = this.status;
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
    if (this.externalApplicationProtocolVersion != null) {
      json[r'externalApplicationProtocolVersion'] =
          this.externalApplicationProtocolVersion;
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
    if (this.cliSecret != null) {
      json[r'cliSecret'] = this.cliSecret;
    } else {
      json[r'cliSecret'] = null;
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
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
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
    return json;
  }

  /// Returns a new [ProjectConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ProjectConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ProjectConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectConfig(
        projectID: mapValueOfType<String>(json, r'projectID')!,
        externalName: mapValueOfType<String>(json, r'externalName')!,
        emailFrom: mapValueOfType<String>(json, r'emailFrom')!,
        smsFrom: mapValueOfType<String>(json, r'smsFrom')!,
        fallbackLanguage: mapValueOfType<String>(json, r'fallbackLanguage')!,
        autoDetectLanguage: mapValueOfType<bool>(json, r'autoDetectLanguage')!,
        integrationModeHosted:
            mapValueOfType<bool>(json, r'integrationModeHosted')!,
        integrationModeAPI: mapValueOfType<bool>(json, r'integrationModeAPI')!,
        integrationModeWebComponent:
            mapValueOfType<bool>(json, r'integrationModeWebComponent')!,
        hasExistingUsers: mapValueOfType<bool>(json, r'hasExistingUsers')!,
        hasVerifiedSession: mapValueOfType<bool>(json, r'hasVerifiedSession')!,
        hasGeneratedSession:
            mapValueOfType<bool>(json, r'hasGeneratedSession')!,
        hasStartedUsingPasskeys:
            mapValueOfType<bool>(json, r'hasStartedUsingPasskeys')!,
        hasStartedUsingSessions:
            mapValueOfType<bool>(json, r'hasStartedUsingSessions')!,
        backendAPIUrl: mapValueOfType<String>(json, r'backendAPIUrl')!,
        frontendAPIUrl: mapValueOfType<String>(json, r'frontendAPIUrl')!,
        applicationUrl: mapValueOfType<String>(json, r'applicationUrl')!,
        useCli: mapValueOfType<bool>(json, r'useCli')!,
        doubleOptIn: mapValueOfType<bool>(json, r'doubleOptIn')!,
        userFullNameRequired:
            mapValueOfType<bool>(json, r'userFullNameRequired')!,
        webauthnRPID: mapValueOfType<String>(json, r'webauthnRPID')!,
        webComponentDebug: mapValueOfType<bool>(json, r'webComponentDebug')!,
        created: mapValueOfType<String>(json, r'created')!,
        updated: mapValueOfType<String>(json, r'updated')!,
        status: ProjectConfigStatusEnum.fromJson(json[r'status'])!,
        appType: ProjectConfigAppTypeEnum.fromJson(json[r'appType']),
        productKey: mapValueOfType<String>(json, r'productKey'),
        externalApplicationProtocolVersion:
            mapValueOfType<String>(json, r'externalApplicationProtocolVersion'),
        webhookURL: mapValueOfType<String>(json, r'webhookURL'),
        webhookUsername: mapValueOfType<String>(json, r'webhookUsername'),
        webhookPassword: mapValueOfType<String>(json, r'webhookPassword'),
        webhookTestInvalidUsername:
            mapValueOfType<String>(json, r'webhookTestInvalidUsername'),
        webhookTestValidUsername:
            mapValueOfType<String>(json, r'webhookTestValidUsername'),
        webhookTestValidPassword:
            mapValueOfType<String>(json, r'webhookTestValidPassword'),
        externalApplicationUsername:
            mapValueOfType<String>(json, r'externalApplicationUsername'),
        externalApplicationPassword:
            mapValueOfType<String>(json, r'externalApplicationPassword'),
        legacyAuthMethodsUrl:
            mapValueOfType<String>(json, r'legacyAuthMethodsUrl'),
        passwordVerifyUrl: mapValueOfType<String>(json, r'passwordVerifyUrl'),
        authSuccessRedirectUrl:
            mapValueOfType<String>(json, r'authSuccessRedirectUrl'),
        passwordResetUrl: mapValueOfType<String>(json, r'passwordResetUrl'),
        allowUserRegistration:
            mapValueOfType<bool>(json, r'allowUserRegistration'),
        allowIPStickiness: mapValueOfType<bool>(json, r'allowIPStickiness'),
        passkeyAppendInterval: ProjectConfigPasskeyAppendIntervalEnum.fromJson(
            json[r'passkeyAppendInterval']),
        cliSecret: mapValueOfType<String>(json, r'cliSecret'),
        environment:
            ProjectConfigEnvironmentEnum.fromJson(json[r'environment']),
        frontendFramework: ProjectConfigFrontendFrameworkEnum.fromJson(
            json[r'frontendFramework']),
        domain: mapValueOfType<String>(json, r'domain'),
        smtpUseCustom: mapValueOfType<bool>(json, r'smtpUseCustom'),
        smtpHost: mapValueOfType<String>(json, r'smtpHost'),
        smtpPort: mapValueOfType<int>(json, r'smtpPort'),
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername'),
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword'),
        supportEmail: mapValueOfType<String>(json, r'supportEmail'),
      );
    }
    return null;
  }

  static List<ProjectConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectConfig> mapFromJson(dynamic json) {
    final map = <String, ProjectConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectConfig-objects as value to a dart map
  static Map<String, List<ProjectConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProjectConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectConfig.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projectID',
    'externalName',
    'emailFrom',
    'smsFrom',
    'fallbackLanguage',
    'autoDetectLanguage',
    'integrationModeHosted',
    'integrationModeAPI',
    'integrationModeWebComponent',
    'hasExistingUsers',
    'hasVerifiedSession',
    'hasGeneratedSession',
    'hasStartedUsingPasskeys',
    'hasStartedUsingSessions',
    'backendAPIUrl',
    'frontendAPIUrl',
    'applicationUrl',
    'useCli',
    'doubleOptIn',
    'userFullNameRequired',
    'webauthnRPID',
    'webComponentDebug',
    'created',
    'updated',
    'status',
  };
}

class ProjectConfigStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = ProjectConfigStatusEnum._(r'active');
  static const configuring = ProjectConfigStatusEnum._(r'configuring');

  /// List of all possible values in this [enum][ProjectConfigStatusEnum].
  static const values = <ProjectConfigStatusEnum>[
    active,
    configuring,
  ];

  static ProjectConfigStatusEnum? fromJson(dynamic value) =>
      ProjectConfigStatusEnumTypeTransformer().decode(value);

  static List<ProjectConfigStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectConfigStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigStatusEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigStatusEnum].
class ProjectConfigStatusEnumTypeTransformer {
  factory ProjectConfigStatusEnumTypeTransformer() =>
      _instance ??= const ProjectConfigStatusEnumTypeTransformer._();

  const ProjectConfigStatusEnumTypeTransformer._();

  String encode(ProjectConfigStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active':
          return ProjectConfigStatusEnum.active;
        case r'configuring':
          return ProjectConfigStatusEnum.configuring;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigStatusEnumTypeTransformer] instance.
  static ProjectConfigStatusEnumTypeTransformer? _instance;
}

class ProjectConfigAppTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigAppTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const web = ProjectConfigAppTypeEnum._(r'web');
  static const native_ = ProjectConfigAppTypeEnum._(r'native');

  /// List of all possible values in this [enum][ProjectConfigAppTypeEnum].
  static const values = <ProjectConfigAppTypeEnum>[
    web,
    native_,
  ];

  static ProjectConfigAppTypeEnum? fromJson(dynamic value) =>
      ProjectConfigAppTypeEnumTypeTransformer().decode(value);

  static List<ProjectConfigAppTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectConfigAppTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigAppTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigAppTypeEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigAppTypeEnum].
class ProjectConfigAppTypeEnumTypeTransformer {
  factory ProjectConfigAppTypeEnumTypeTransformer() =>
      _instance ??= const ProjectConfigAppTypeEnumTypeTransformer._();

  const ProjectConfigAppTypeEnumTypeTransformer._();

  String encode(ProjectConfigAppTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigAppTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigAppTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'web':
          return ProjectConfigAppTypeEnum.web;
        case r'native':
          return ProjectConfigAppTypeEnum.native_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigAppTypeEnumTypeTransformer] instance.
  static ProjectConfigAppTypeEnumTypeTransformer? _instance;
}

class ProjectConfigPasskeyAppendIntervalEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigPasskeyAppendIntervalEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n0d = ProjectConfigPasskeyAppendIntervalEnum._(r'0d');
  static const n1d = ProjectConfigPasskeyAppendIntervalEnum._(r'1d');
  static const n3d = ProjectConfigPasskeyAppendIntervalEnum._(r'3d');
  static const n1w = ProjectConfigPasskeyAppendIntervalEnum._(r'1w');
  static const n3w = ProjectConfigPasskeyAppendIntervalEnum._(r'3w');
  static const n1m = ProjectConfigPasskeyAppendIntervalEnum._(r'1m');
  static const n3m = ProjectConfigPasskeyAppendIntervalEnum._(r'3m');

  /// List of all possible values in this [enum][ProjectConfigPasskeyAppendIntervalEnum].
  static const values = <ProjectConfigPasskeyAppendIntervalEnum>[
    n0d,
    n1d,
    n3d,
    n1w,
    n3w,
    n1m,
    n3m,
  ];

  static ProjectConfigPasskeyAppendIntervalEnum? fromJson(dynamic value) =>
      ProjectConfigPasskeyAppendIntervalEnumTypeTransformer().decode(value);

  static List<ProjectConfigPasskeyAppendIntervalEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectConfigPasskeyAppendIntervalEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigPasskeyAppendIntervalEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigPasskeyAppendIntervalEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigPasskeyAppendIntervalEnum].
class ProjectConfigPasskeyAppendIntervalEnumTypeTransformer {
  factory ProjectConfigPasskeyAppendIntervalEnumTypeTransformer() =>
      _instance ??=
          const ProjectConfigPasskeyAppendIntervalEnumTypeTransformer._();

  const ProjectConfigPasskeyAppendIntervalEnumTypeTransformer._();

  String encode(ProjectConfigPasskeyAppendIntervalEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigPasskeyAppendIntervalEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigPasskeyAppendIntervalEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'0d':
          return ProjectConfigPasskeyAppendIntervalEnum.n0d;
        case r'1d':
          return ProjectConfigPasskeyAppendIntervalEnum.n1d;
        case r'3d':
          return ProjectConfigPasskeyAppendIntervalEnum.n3d;
        case r'1w':
          return ProjectConfigPasskeyAppendIntervalEnum.n1w;
        case r'3w':
          return ProjectConfigPasskeyAppendIntervalEnum.n3w;
        case r'1m':
          return ProjectConfigPasskeyAppendIntervalEnum.n1m;
        case r'3m':
          return ProjectConfigPasskeyAppendIntervalEnum.n3m;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigPasskeyAppendIntervalEnumTypeTransformer] instance.
  static ProjectConfigPasskeyAppendIntervalEnumTypeTransformer? _instance;
}

class ProjectConfigEnvironmentEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigEnvironmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const dev = ProjectConfigEnvironmentEnum._(r'dev');
  static const prod = ProjectConfigEnvironmentEnum._(r'prod');

  /// List of all possible values in this [enum][ProjectConfigEnvironmentEnum].
  static const values = <ProjectConfigEnvironmentEnum>[
    dev,
    prod,
  ];

  static ProjectConfigEnvironmentEnum? fromJson(dynamic value) =>
      ProjectConfigEnvironmentEnumTypeTransformer().decode(value);

  static List<ProjectConfigEnvironmentEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectConfigEnvironmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigEnvironmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigEnvironmentEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigEnvironmentEnum].
class ProjectConfigEnvironmentEnumTypeTransformer {
  factory ProjectConfigEnvironmentEnumTypeTransformer() =>
      _instance ??= const ProjectConfigEnvironmentEnumTypeTransformer._();

  const ProjectConfigEnvironmentEnumTypeTransformer._();

  String encode(ProjectConfigEnvironmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigEnvironmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigEnvironmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'dev':
          return ProjectConfigEnvironmentEnum.dev;
        case r'prod':
          return ProjectConfigEnvironmentEnum.prod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigEnvironmentEnumTypeTransformer] instance.
  static ProjectConfigEnvironmentEnumTypeTransformer? _instance;
}

class ProjectConfigFrontendFrameworkEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectConfigFrontendFrameworkEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const react = ProjectConfigFrontendFrameworkEnum._(r'react');
  static const vuejs = ProjectConfigFrontendFrameworkEnum._(r'vuejs');
  static const vanillajs = ProjectConfigFrontendFrameworkEnum._(r'vanillajs');

  /// List of all possible values in this [enum][ProjectConfigFrontendFrameworkEnum].
  static const values = <ProjectConfigFrontendFrameworkEnum>[
    react,
    vuejs,
    vanillajs,
  ];

  static ProjectConfigFrontendFrameworkEnum? fromJson(dynamic value) =>
      ProjectConfigFrontendFrameworkEnumTypeTransformer().decode(value);

  static List<ProjectConfigFrontendFrameworkEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectConfigFrontendFrameworkEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectConfigFrontendFrameworkEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectConfigFrontendFrameworkEnum] to String,
/// and [decode] dynamic data back to [ProjectConfigFrontendFrameworkEnum].
class ProjectConfigFrontendFrameworkEnumTypeTransformer {
  factory ProjectConfigFrontendFrameworkEnumTypeTransformer() =>
      _instance ??= const ProjectConfigFrontendFrameworkEnumTypeTransformer._();

  const ProjectConfigFrontendFrameworkEnumTypeTransformer._();

  String encode(ProjectConfigFrontendFrameworkEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectConfigFrontendFrameworkEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectConfigFrontendFrameworkEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'react':
          return ProjectConfigFrontendFrameworkEnum.react;
        case r'vuejs':
          return ProjectConfigFrontendFrameworkEnum.vuejs;
        case r'vanillajs':
          return ProjectConfigFrontendFrameworkEnum.vanillajs;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectConfigFrontendFrameworkEnumTypeTransformer] instance.
  static ProjectConfigFrontendFrameworkEnumTypeTransformer? _instance;
}
