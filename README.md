# Complete passkeys integration example for Corbado API with Flutter
This is a sample implementation of a Flutter app with integration to Corbado API to use passkeys (based on FIDO2 / WebAuthn).

## 1. File Structure

* `android/`: this directory contains the Android-specific files for the app. It includes the `app/` directory, which contains the source code and other files needed to build the Android app.
* `ios/`: this directory contains the iOS-specific files for the app. It includes the `Runner/` directory, which contains the source code and other files needed to build the iOS app.
* `lib/`: this directory contains the Dart source code for the app. It includes the `main.dart` file, which is the entry point for the app, as well as other Dart source files that make up the app.

## 2. Setup

### 2.1 Prerequisites
Please follow the steps in [Getting started](https://docs.corbado.com/overview/getting-started) to create and configure a project in our [developer panel](https://app.corbado.com).

### 2.2 Configure environment variables
Use the values you obtained in step 2.1 to configure the following variables inside `lib/env.dart`:
1. **projectID**: The project ID (pro-xxxx).
2. **apiSecret**: The API secret (something cryptic).

> :warning: The current version of the repository is not ready for production-usage as it should just demonstrate the basic flow. A more stable and more secure version will be pushed soon.

### 2.3 (Android) Leverage digital asset links
If you are running the Android app, you need an assetlinks.json file stored on your website, so that the Android device can download and verify the domains in your entitelement. You can use the following JSON template:
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

| Variable                        | Description                                                                                                        | Example                                                                                         |
|---------------------------------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| URL                             | The URL of your website                                                                                            | https://api.corbado.com                                                                         |
| PACKAGE-NAME                    | Your Android package name                                                                                           | com.corbado.api                                                                                 |
| FINGERPRINT-OF-YOUR-SIGNING-KEY | The fingerprint of the key with which the app is signed (Android studio signs apps automatically before execution) | E8:35:B9:B4:78 ... |

The JSON file needs to be stored under ```<URL>/.well-known/assetlinks.json```.

Follow the steps described in the [FIDO2 API Documentation](https://developers.google.com/identity/fido/android/native-apps) page, to adjust the Android manifest accordingly.

You can use [Google's tool](https://developers.google.com/digital-asset-links/tools/generator) to verify that your assetlinks.json file is setup correctly.

### 2.4 (iOS) Configuring iOS Associated Domains
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


## 3. Usage

### 3.1 Running the Android app

To run the app, follow these steps:

1. Make sure you have Flutter installed on your development machine. If you don't, follow the instructions in the [Flutter documentation](https://flutter.dev/docs/get-started/install) to install it.

2. Clone the repository

3. Connect your device or launch an emulator.

4. Run the app:
```flutter run```

5. The app should now be running on your device or emulator.

### 3.2 Running the iOS app from Xcode

To run the iOS app using Xcode, follow these steps:

1. Open the project in Xcode by running the following command in the project's root directory:
```open ios/Runner.xcworkspace```

2. In Xcode, set the bundle identifier of the app by going to the "Runner" target, then the "General" tab, and editing the "Bundle Identifier" field.

3. To set environment variables from the "Edit Scheme" section
   1. In Xcode, go to the "Product" menu and select "Scheme" > "Edit Scheme".
   2. Select the "Run" option on the left side and select "Arguments" tab.
   3. In the "Environment Variables" section, click the "+" button to add a new variable. Set ```RELYING_PARTY_ID``` environment variable to your fully qualified domain name (see section 2.3 above).

   
4. Connect your iOS device or select a simulator, then press the "Run" button to build and run the app on your device or simulator.   
   
