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
create and configure a project in our [developer panel](https://app.corbado.com). Create an API secret
[here](https://app.corbado.com/app/settings/credentials/api-keys) and add put your project ID as well
as the API secret in the env.json which is located in the root folder.

### 3. Android

To verify the app against your website which is required for the WebAuthn protocol,
you need to host an assetlinks.json file on that website. The Flutter app
can host the file locally and you have to expose it to the Internet using ngrok (option 1).
Alternatively, you can host the file remotely (option 2).

### 3.1. Option 1: Locally hosting of the assetlinks.json (ngrok exposure to the Internet)

Install ngrok, create an account at [ngrok.com](https://ngrok.com) and add your ngrok authtoken to
your installation
as shown [here](https://dashboard.ngrok.com/get-started/your-authtoken).

Flutter automatically hosts the correct assetlinks.json on its own local webserver inside the
emulator.
To make this webserver accessible from the outside,
execute 

```adb forward tcp:8080 tcp:8080```

to build a tunnel between the emulator and your machine (you need to have Android SDK installed to execute `adb` commands).
Then, run 

```ngrok http 8080```

to build a tunnel from your machine to the internet. This command will
provide you with an individual ngrok URL (e.g. `https://312d-212-204-96-162.eu.ngrok.io`). When you enter the ngrok URL the first time in your browser, you need to confirm it. The ngork URL can be used to access the webserver from the outside.

### 3.2 Option 2: Remote hosting of the assetlinks.json

If you want to host `assetlinks.json yourself, use the following JSON template and store it under
```https://your-domain.com/.well-known/assetlinks.json```:

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

- PACKAGE-NAME: The Android package name (e.g. com.corbado.api) for this app if you don't rename it
- FINGERPRINT-OF-YOUR-SIGNING-KEY: The fingerprint of the key with which the app is signed (Android
  studio signs apps automatically before execution).
  It can be obtained by
  executing ```keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android```
  .
  From there, take the SHA256 fingerprint and enter it
  here: https://www.rapidtables.com/convert/number/hex-to-ascii.html.
  Next, copy the resulting string and enter it here: https://www.base64url.com/encode. Here, take
  the resulting Base 64 URL encoded string and use it as `FINGERPRINT-OF-YOUR-SIGNING-KEY`.
  Alternatively, follow step 3.1. to let flutter host `assetlinks.json` and copy the fingerprint from there: ```localhost:8080/.well-known/assetlinks.json```.

Follow the steps described in
the [FIDO2 API Documentation](https://developers.google.com/identity/fido/android/native-apps) page,
to adjust the Android manifest accordingly.

You can use [Google's tool](https://developers.google.com/digital-asset-links/tools/generator) to
verify that your assetlinks.json file is set up correctly.

### 3.3. Running the Android app

Run the app by executing ```flutter run --dart-define-from-file=env.json```
In case you run the app inside Android studio, edit the run configuration and
add ```--dart-define-from-file=env.json``` to the
additional run args.

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

The JSON file needs to be stored under ```<your-url>/.well-known/apple-app-site-association```.
For example: ```https://api.corbado.com/.well-known/apple-app-site-association```. The port number,
if needed, can be added in the URL.

The fully qualified domain of your url should then be provided as an environment
variable ```RELYING_PARTY_ID``` in the corresponding Xcode Project of your application. For example,
in case of ```https://api.corbado.com/.well-known/apple-app-site-association```, the environment
variables should include ```RELYING_PARTY_ID = "api.corbado.com"```.

To learn more about associated domains
visit: [Apple Developer Supporting Associated Domains](https://developer.apple.com/documentation/xcode/supporting-associated-domains)
.

### 4.2 Running the iOS app from Xcode

To run the iOS app using Xcode, follow these steps:

1. Open the project in Xcode by running the following command in the project's root directory:
   ```open ios/Runner.xcworkspace```

2. In Xcode, set the bundle identifier of the app by going to the "Runner" target, then the "
   General" tab, and editing the "Bundle Identifier" field.

3. To set environment variables from the "Edit Scheme" section
    1. In Xcode, go to the "Product" menu and select "Scheme" > "Edit Scheme".
    2. Select the "Run" option on the left side and select "Arguments" tab.
    3. In the "Environment Variables" section, click the "+" button to add a new variable.
       Set ```RELYING_PARTY_ID``` environment variable to your fully qualified domain name (see
       section 2.3 above).


4. Connect your iOS device or select a simulator, then press the "Run" button to build and run the
   app on your device or simulator.   
   
