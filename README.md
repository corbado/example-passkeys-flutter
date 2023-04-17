# Complete passkeys integration example for Corbado API with Flutter

This is a sample implementation of a Flutter app with integration to Corbado API to use passkeys (based on FIDO2 / WebAuthn).

## 1. File Structure

* `android/`: this directory contains the Android-specific files for the app. It includes the `app/`
  directory, which contains the source code and other files needed to build the Android app.
* `ios/`: this directory contains the iOS-specific files for the app. It includes the `Runner/`
  directory, which contains the source code and other files needed to build the iOS app.
* `lib/`: this directory contains the Dart source code for the app. It includes the `main.dart`file,
  which is the entry point for the app, as well as other Dart source files that make up the app.

## 2. Prerequisites

Please follow the steps in [Getting started](https://docs.corbado.com/overview/getting-started) to
create a project in our [developer panel](https://app.corbado.com/signin#register). In the root folder of this repo, create an env.json file and copy the contents from
env.json.scel. Here, fill in your project ID.

## 3. Android

### 3.1. Add Android app to developer panel 

Inside the developer panel, go to [Settings -> Credentials -> Native Apps](https://app.corbado.com/app/settings/credentials/native-apps) and click on 'Add new'. There you need to enter the package name (this sample application uses `com.corbado.passkeys` as default package name) as well as the SHA-256 fingerprint of your signing key (e.g. 6H:A7:BC:9A:...). It can be obtained by executing `gradlew signingReport` in the android directory. If you just want your local debug-key which is used when developing the app in Android Studio, use ```keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android```. Alternatively, you can look into the console when executing the app:
<img width="960" alt="image" src="https://user-images.githubusercontent.com/23581140/232052174-821b4a06-0cd5-4b0f-9933-58251dc889c7.png">

If you've successfully entered the package name and fingerprint in the developer panel, Corbado deploys a required /.well-known/assetlinks.json file to `{project ID}.auth.corbado.com`. This makes the `assetlinks.json` file reachable to the public and also binds your passkeys to `{project ID}.auth.corbado.com` (the [WebAuthn relying party](https://www.w3.org/TR/webauthn-2/#webauthn-relying-party)). To use your own domain and bind the passkeys to it, please see the next step 3.2.

### 3.2. (Optional) Bind the passkeys to your own domain
If you want to bind the passkeys to your own domain (e.g. your-domain.com), you need to manually change the WebAuthn relying party and host the assetlinks.json file on this domain (so on `{your-domain.com}/.well-known/assetlinks.json`). To make it work with Corbado, you need to change the CNAME in the [developer panel](https://app.corbado.com/app/settings/general/go-live) to your-domain.com. Corbado will then automatically bind your passkeys to the root / top-level domain of the provided CNAME unless it is on the [public suffix list](https://publicsuffix.org/learn/). Moreover, you need to associate your native app in the `assetlinks.json` file:

Use the following JSON template and store it under
```{your-domain.com}/.well-known/assetlinks.json```:

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
      "sha256_cert_fingerprints": [
        "{FINGERPRINT-OF-YOUR-SIGNING-KEY}"
      ]
    }
  }
]
```

Variables:

- PACKAGE-NAME: The Android package name (this sample app uses com.corbado.passkeys)
- FINGERPRINT-OF-YOUR-SIGNING-KEY: The SHA-256 fingerprint obtained in step 3.1 (e.g. 7H:AC:4C:...).

You can use [Google's tool](https://developers.google.com/digital-asset-links/tools/generator) to
verify that your `assetlinks.json file is set up and hosted correctly.

### 3.3. Add authorized origin of your Android app in the developer panel
To let your Android app securely communicate with Corbado, you need to add the Android app's origin to the authorized origins in the [developer panel](https://app.corbado.com/app/settings/credentials). The Android app's origin is in the form of `android:apk-key-hash:xxx`. You can obtain it by having a look at the "Base64URL encoded" output from step 3.1. That's your Android app origin.

### 3.3. Running the Android app

Run the app by executing ```flutter run --dart-define-from-file=env.json```
In case you run the app inside Android studio, edit the run configuration and
add ```--dart-define-from-file=env.json``` to the
additional run args.

### 3.4. Troubleshooting

If the application says your device does not support biometrics yet, you have to properly setup biometrics on the phone.
Open the settings and add a PIN as well as a fingerprint as shown below (PIN is required for fingerprint).
![image](https://user-images.githubusercontent.com/23581140/232045115-86943a1a-c00a-48c3-bdc8-3f98daa962bc.png)


## 4. iOS

### 4.1. Configuring iOS Associated Domains

If you are running the iOS app, you need an associated domain file stored on your website, so that
the iOS device can download and verify the domains in your entitelement. For Corbado service you can
use the following JSON template:

```json
{
  "applinks": {
    "details": [
    ]
  },
  "webcredentials": {
    "apps": [
      "{ YOUR_APP_BUNDLE_IDENTIFIER }"
    ]
  },
  "appclips": {
    "apps": []
  }
}
```

The JSON file needs to be stored under ```<your-domain>/.well-known/apple-app-site-association```.
For example: ```https://{project ID}.auth.corbado.com/.well-known/apple-app-site-association```. The port number,
if needed, can be added in the URL.

The fully qualified domain of your URL should then be provided as an environment
variable ```RELYING_PARTY_ID``` in the corresponding Xcode project of your application. For example,
in case of ```https://{project ID}.auth.corbado.com/.well-known/apple-app-site-association```, the environment
variables should include ```RELYING_PARTY_ID = "<project ID>.auth.corbado.com"```.

To learn more about associated domains
visit: [Apple Developer Supporting Associated Domains](https://developer.apple.com/documentation/xcode/supporting-associated-domains)
.

### 4.2 Running the iOS app from Xcode

To run the iOS app using Xcode, follow these steps:

1. Open the project in Xcode by running the following command in the project's root directory:
   ```open ios/Runner.xcworkspace```

2. In Xcode, set the bundle identifier of the app by going to the "Runner" target, then the "General" tab, and editing the "Bundle Identifier" field.

3. To set environment variables from the "Edit Scheme" section
    1. In Xcode, go to the "Product" menu and select "Scheme" -> "Edit Scheme".
    2. Select the "Run" option on the left side and select "Arguments" tab.
    3. In the "Environment Variables" section, click the "+" button to add a new variable.
       Set ```RELYING_PARTY_ID``` environment variable to your fully qualified domain name (see
       section 2.3 above).


4. Connect your iOS device or select a simulator, then press the "Run" button to build and run the
   app on your device or simulator.   
   
## 5. Outlook
This is a basic sample application that shows how passkeys can be integrated in a Flutter app using Corbado. This repository will be continuously updated and improved. We already have the following features on our roadmap that will be pushed within the next weeks:
- [ ]


If you have questions, feedback or wishes regarding features, please reacht out to us via [email](mailto:contact@corbado.com) or join our passkeys community on [Slack](https://join.slack.com/t/corbado/shared_invite/zt-1b7867yz8-V~Xr~ngmSGbt7IA~g16ZsQ). We're also happy to receive pull requests if you have suggestions for improvement.
