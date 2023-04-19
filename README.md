# Complete passkeys integration example for Corbado API with Flutter

This is a sample implementation of a Flutter app with integration to Corbado API to use passkeys (based on FIDO2 / WebAuthn).

## 1. File Structure

- `android/`: this directory contains the Android-specific files for the app. It includes the `app/`
  directory, which contains the source code and other files needed to build the Android app.
- `ios/`: this directory contains the iOS-specific files for the app. It includes the `Runner/`
  directory, which contains the source code and other files needed to build the iOS app.
- `lib/`: this directory contains the Dart source code for the app. It includes the `main.dart`file,
  which is the entry point for the app, as well as other Dart source files that make up the app.

## 2. Prerequisites

Please follow the steps in [Getting started](https://docs.corbado.com/overview/getting-started) to
create a project in our [developer panel](https://app.corbado.com/signin#register). In the root folder of this repo, create an `env.json` file and copy the contents from `env.json.scel`. Here, fill in your project ID.

## 3. Android

### 3.1. Add Android app to developer panel

Inside the developer panel, go to [Settings -> Credentials -> Native Apps](https://app.corbado.com/app/settings/credentials/native-apps) and click on 'Add new'. There you need to enter the package name (this sample application uses `com.corbado.passkeys` as default package name) as well as the SHA-256 fingerprint of your signing key (e.g. 6H:A7:BC:9A:...). It can be obtained by executing `gradlew signingReport` in the `android/` directory. If you just want your local debug-key which is used when developing the app in Android Studio, use `keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android`. Alternatively, you can look into the console when executing the app:
<img width="960" alt="image" src="https://user-images.githubusercontent.com/23581140/232052174-821b4a06-0cd5-4b0f-9933-58251dc889c7.png">

If you've successfully entered the package name and fingerprint in the developer panel, Corbado deploys a required /.well-known/assetlinks.json file to `{project ID}.auth.corbado.com`. This makes the `assetlinks.json` file publicly reachable and also binds your passkeys to `{project ID}.auth.corbado.com` (the [WebAuthn relying party](https://www.w3.org/TR/webauthn-2/#webauthn-relying-party)). To use your own domain and bind the passkeys to it, please see the next step 3.2.

### 3.2. (Optional) Bind the passkeys to your own domain

If you want to bind the passkeys to your own domain (e.g. `your-domain.com`), you need to manually change the [WebAuthn relying party](https://www.w3.org/TR/webauthn-2/#webauthn-relying-party) and host the `assetlinks.json` file on this domain (so on `your-domain.com/.well-known/assetlinks.json`). To make it work with Corbado, you need to change the CNAME in the [developer panel](https://app.corbado.com/app/settings/general/go-live) to a subdomain of your domain, e.g. `auth.your-domain.com`. Corbado will then automatically bind your passkeys to the root / top-level domain of the provided CNAME unless it is on the [public suffix list](https://publicsuffix.org/learn/), here to `your-domain.com`.

> :warning: **Passkeys binding and sub-subdomain as CNAME**: If the CNAME you enter in Corbado developer panel is a sub-subdomain, e.g. `staging.auth.your-domain.com`, you still need to host the `assetlinks.json` file on the root / top-level domain: host `assetlinks.json` at `your-domain.com/.well-known/assetlinks.json`, as your relying party ID is the root / top-level domain `your-domain.com`.

Moreover, you need to associate your native app in the `assetlinks.json` file. Use the following JSON template and host it under
`your-domain.com/.well-known/assetlinks.json`:

```json
[
  {
    "relation": [
      "delegate_permission/common.handle_all_urls",
      "delegate_permission/common.get_login_creds"
    ],
    "target": {
      "namespace": "android_app",
      "package_name": "{PACKAGE-NAME}",
      "sha256_cert_fingerprints": ["{FINGERPRINT-OF-YOUR-SIGNING-KEY}"]
    }
  }
]
```

Variables:

- PACKAGE-NAME: The Android package name (this sample app uses com.corbado.passkeys)
- FINGERPRINT-OF-YOUR-SIGNING-KEY: The SHA-256 fingerprint obtained in step 3.1 (e.g. 7H:AC:4C:...).

You can use [Google's tool](https://developers.google.com/digital-asset-links/tools/generator) to
verify that your `assetlinks.json` file is set up and hosted correctly.

### 3.3. Add authorized origin of your Android app in the developer panel

To let your Android app securely communicate with Corbado, you need to add the Android app's origin to the authorized origins in the [developer panel](https://app.corbado.com/app/settings/credentials). The Android app's origin is in the form of `android:apk-key-hash:xxx`. You can obtain it by having a look at the "Base64URL encoded" output from step 3.1. That's your Android app origin.

### 3.4. Run the Android app

Run the app by executing `flutter run --dart-define-from-file=env.json`
In case you run the app inside Android studio, edit the run configuration and
add `--dart-define-from-file=env.json` to the
additional run args.

### 3.5. Troubleshooting

If the application says your device does not support biometrics yet, you have to properly setup biometrics on the phone.
Open the settings and add a PIN as well as a fingerprint as shown below (PIN is required for fingerprint).
![image](https://user-images.githubusercontent.com/23581140/232045115-86943a1a-c00a-48c3-bdc8-3f98daa962bc.png)

## 4. iOS

### 4.1. Add iOS app to developer panel

Inside the developer panel, go to [Settings -> Credentials -> Native Apps](https://app.corbado.com/app/settings/credentials/native-apps) and click on 'Add new'. There you need to enter the app identifier prefix of your iOS application as well as the bundle identifier (this sample application uses `com.corbado.passkeys` as default bundle identifier). The app identifier prefix can be obtained by going to your [Apple Developer Certificates, Identifier & Profiles](https://developer.apple.com/account/resources/identifiers/bundleId) associated with your Apple Developer account, and finding the corresponding app identifier prefix.

If you've successfully entered the app identifier prefix and the bundle identifier in the developer panel, Corbado deploys a required /.well-known/apple-app-site-association file to `{project ID}.auth.corbado.com`. This makes the `apple-app-site-association.json` file publicly reachable and also binds your passkeys to `{project ID}.auth.corbado.com` (the [WebAuthn relying party](https://www.w3.org/TR/webauthn-2/#webauthn-relying-party)). To use your own domain and bind the passkeys to it, please see the next step 4.2.

### 4.2. (Optional) Bind the passkeys to your own domain

If you want to bind the passkeys to your own domain (e.g. `your-domain.com`), you need to manually change the [WebAuthn relying party](https://www.w3.org/TR/webauthn-2/#webauthn-relying-party) and host the `apple-app-site-association.json` file on this domain (so on `your-domain.com/.well-known/apple-app-site-association`). To make it work with Corbado, you need to change the CNAME in the [developer panel](https://app.corbado.com/app/settings/general/go-live) to a subdomain of your domain, e.g. `auth.your-domain.com`. Corbado will then automatically bind your passkeys to the root / top-level domain of the provided CNAME unless it is on the [public suffix list](https://publicsuffix.org/learn/), here to `your-domain.com`.

> :warning: **Passkeys binding and sub-subdomain as CNAME**: If the CNAME you enter in Corbado developer panel is a sub-subdomain, e.g. `staging.auth.your-domain.com`, you still need to host the `apple-app-site-association.json` file on the root / top-level domain: host `apple-app-site-association.json` at `your-domain.com/.well-known/apple-app-site-association`, as your relying party ID is the root / top-level domain `your-domain.com`.

Moreover, you need to associate your native app in the `apple-app-site-association.json` file. Use the following JSON template and store it under
`your-domain.com/.well-known/apple-app-site-association.json`:

```json
{
  "appclips": {
    "apps": []
  },
  "applinks": {
    "apps": []
  },
  "webcredentials": {
    "apps": ["{ APP_IDENTIFIER_PREFIX }.{ BUNDLE_IDENTIFIER }"]
  }
}
```

Variables:

- APP_IDENTIFIER_PREFIX: The iOS app identifier prefix associated with your development team in your Apple Developer account.
- BUNDLE_IDENTIFIER: The bundle identifier associated with your iOS application. Can be found in Xcode development environment.

### 4.3. Add authorized origin of your Android app in the developer panel

To let your iOS app securely communicate with Corbado, you need to add the iOS app's origin to the authorized origins in the [developer panel](https://app.corbado.com/app/settings/credentials). The iOS app's origin is in the form of `{PROJECT_ID}.auth.corbado.com`. You can obtain the corresponding project ID from developer pannel.

### 4.4. Run the iOS app

Run the app by executing `flutter run --dart-define-from-file=env.json`
In case you run the app inside Xcode, edit the run configuration and
add `--dart-define-from-file=env.json` to the
additional run args.

## 5. Outlook

This is a basic sample application that shows how passkeys can be integrated in a Flutter app using Corbado. This repository will be continuously updated and improved. We already have the following features on our roadmap that will be pushed within the next weeks:

- [ ] Automatic whitelisting of Android app's origin based on given package name and fingerprint
- [ ] Opt-out for email confirmation via email magic link
- [ ] Email magic links open the native Flutter app if openend on mobile device
- [ ] Better cross-device & cross-platform showcase with a web app

If you have questions, feedback or wishes regarding features, please reacht out to us via [email](mailto:contact@corbado.com) or join our passkeys community on [Slack](https://join.slack.com/t/corbado/shared_invite/zt-1b7867yz8-V~Xr~ngmSGbt7IA~g16ZsQ). We're also happy to receive pull requests if you have suggestions for improvement.
