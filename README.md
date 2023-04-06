# Complete passkeys integration example for Corbado API with Flutter
This is a sample implementation of a Flutter app with integration to Corbado API to use passkeys (based on FIDO2 / WebAuthn).

## 1. File Structure

* `android/`: this directory contains the Android-specific files for the app. It includes the `app/` directory, which contains the source code and other files needed to build the Android app.
* `ios/`: this directory contains the iOS-specific files for the app. It includes the `Runner/` directory, which contains the source code and other files needed to build the iOS app.
* `lib/`: this directory contains the Dart source code for the app. It includes the `main.dart` file, which is the entry point for the app, as well as other Dart source files that make up the app.

## 2. Prerequisites
Please follow the steps in [Getting started](https://docs.corbado.com/overview/getting-started) to create and configure a project in our [developer panel](https://app.corbado.com).

### 3. Android

To verify the app against your website which is required for the Webauthn protocol,
you need to host an assetlinks.json file on that website. The flutter app
can host the file locally and expose it to the internet using ngrok (option 1).
Alternatively, you can host the file yourself (option 2).

### 3.1. Hosting the assetlinks.json locally + Ngrok
Install ngrok, create an account at [ngrok.com](https://ngrok.com) and add your ngrok authtoken to your installation
as shown [here](https://dashboard.ngrok.com/get-started/your-authtoken).

Apart from the app, flutter also runs a webserver on the emulator.
To make this webserver accessible from the outside,
execute ```adb forward tcp:8080 tcp:8080``` to build a tunnel between the emulator and your pc.
Then run ```ngrok http 8080``` to build a tunnel from your pc to the internet. This command will
provide you with an individual ngrok url You can use this url to access the webserver from the outside.

Run the app by executing ```flutter run --dart-define=URL=<your-ngrok-url>``` (e.g. https://a0cb-212-204-96-162.eu.ngrok.io)
In case you run the app inside Android studio, edit the run configuration and add ```--dart-define=URL=<your-ngrok-url>``` to the
Additional run args.

### 3.2 Option 2: Hosting the assetlinks.json yourself
If you want to host the assetlinks file yourself, use the following JSON template and store it under
```https://your-domain.com/.well-known/assetlinks.json```:
```json
[
   {
      "relation" : [
         "delegate_permission/common.handle_all_urls",
         "delegate_permission/common.get_login_creds"
      ],
      "target" : {
         "namespace" : "web",
         "site" : "{URL}"
      }
   },
   {
      "relation" : [
         "delegate_permission/common.handle_all_urls",
         "delegate_permission/common.get_login_creds"
      ],
      "target" : {
         "namespace" : "android_app",
         "package_name" : "{PACKAGE-NAME}",
         "sha256_cert_fingerprints" : [
            "{FINGERPRINT-OF-YOUR-SIGNING-KEY}"
         ]
      }
   }
]
```
Variables:
- URL: The base URL of the website which holds the assetlinks file (e.g. https://api.corbado.com)
- PACKAGE-NAME: The Android package name (com.corbado.api) for this app if you don't rename it
- FINGERPRINT-OF-YOUR-SIGNING-KEY: The fingerprint of the key with which the app is signed (Android studio signs apps automatically before execution).
It can be obtained by executing ```keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android```.
From there take the sha256 fingerprint and encode it using base64URL without padding. 
Alternatively follow step 3.1. to let flutter host the assetlinks file and
copy the fingerprint from there: ```localhost:8080/.well-known/assetlinks.json```.

Follow the steps described in the [FIDO2 API Documentation](https://developers.google.com/identity/fido/android/native-apps) page, to adjust the Android manifest accordingly.

You can use [Google's tool](https://developers.google.com/digital-asset-links/tools/generator) to verify that your assetlinks.json file is setup correctly.


## 4. iOS

### 4.1. Configuring iOS Associated Domains
If you are running the iOS app, you need an associated domain file stored on your website, so that the iOS device can download and verify the domains in your entitelement. For Corbado service you can use the following JSON template: 
```json
{
  "applinks": {
    "details": [
    ]
  },
  "webcredentials": {
    "apps": [ "{ YOUR_APP_BUNDLE_IDENTIFIER }" ]
  },
  "appclips": {
    "apps": []
  }
}
```
The JSON file needs to be stored under ```<your-url>/.well-known/apple-app-site-association```.
For example: ```https://api.corbado.com/.well-known/apple-app-site-association```. The port number, if needed, can be added in the URL. 

The fully qualified domain of your url should then be provided as an environment variable ```RELYING_PARTY_ID``` in the corresponding Xcode Project of your application. For example, in case of ```https://api.corbado.com/.well-known/apple-app-site-association```, the environment variables should include ```RELYING_PARTY_ID = "api.corbado.com"```. 

To learn more about associated domains visit: [Apple Developer Supporting Associated Domains](https://developer.apple.com/documentation/xcode/supporting-associated-domains).

### 4.2 Running the iOS app from Xcode

To run the iOS app using Xcode, follow these steps:

1. Open the project in Xcode by running the following command in the project's root directory:
```open ios/Runner.xcworkspace```

2. In Xcode, set the bundle identifier of the app by going to the "Runner" target, then the "General" tab, and editing the "Bundle Identifier" field.

3. To set environment variables from the "Edit Scheme" section
   1. In Xcode, go to the "Product" menu and select "Scheme" > "Edit Scheme".
   2. Select the "Run" option on the left side and select "Arguments" tab.
   3. In the "Environment Variables" section, click the "+" button to add a new variable. Set ```RELYING_PARTY_ID``` environment variable to your fully qualified domain name (see section 2.3 above).

   
4. Connect your iOS device or select a simulator, then press the "Run" button to build and run the app on your device or simulator.   
   
