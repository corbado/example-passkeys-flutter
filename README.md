# Complete passkeys integration example for Corbado with Flutter

This is a sample implementation of a Flutter app with integration to Corbado to use passkeys (based
on FIDO2 / WebAuthn).

## 1. File Structure

- `android/`: this directory contains the Android-specific files for the app. It includes the `app/`
  directory, which contains the source code and other files needed to build the Android app.
- `ios/`: this directory contains the iOS-specific files for the app. It includes the `Runner/`
  directory, which contains the source code and other files needed to build the iOS app.
- `lib/`: this directory contains the Dart source code for the app. It includes the `main.dart`file,
  which is the entry point for the app, as well as other Dart source files that make up the app.

## 2. Prerequisites

Please follow the steps in [Getting started](https://docs.corbado.com/overview/getting-started) to
create a project in our [developer panel](https://app.corbado.com/signin#register). It will act as
your relying party server. After successful sign up, in the wizard select 'Integration guide', '
Native / mobile app' and 'No existing users'. After creating the project, you will get a Corbado
project ID (e.g. pro-123456789). In the root
folder of this repo, create an `env.json` file and copy the contents from `env.json.scel`. Here,
fill in your Corbado project ID.

## 3. Android

### 3.1. Set up an Android app in Corbado

Set up an Android app at [*Settings* -> *Credentials* -> *Native
apps*](https://app.corbado.com/app/settings/credentials/native-apps) by clicking "Add new".
You will need your **Package name** (e.g. `com.corbado.corbadoauth.example`) and your **SHA-256
fingerprint** (
e.g. `54:4C:94:2C:E9:...`).

The package name of your app is defined in *android/app/build.gradle* (applicationId).
Its default value for the example app is `com.corbado.corbadoauth.example`.

To find your SHA-256 fingerprint, you can execute the following command:

- macOS /
  Linux: `keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android`
-

Windows: `keytool -list -v -keystore "\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android`

Alternatively, you can look in to the logs of the running example app. You will find a log message
like `Fingerprint: 54:4C:94:2C:E9:...`.
Copy the full SHA-256 fingerprint and use it to set up the Android app in the Corbado developer
panel.

### 3.2. (Optional) Bind the passkeys to your own domain

If you want to bind the passkeys to your own domain (e.g. `your-domain.com`), you need to manually
change the [WebAuthn relying party](https://www.w3.org/TR/webauthn-2/#webauthn-relying-party) and
host the `assetlinks.json` file on this domain (so
on `your-domain.com/.well-known/assetlinks.json`). To make it work with Corbado, you need to change
the CNAME in the [developer panel](https://app.corbado.com/app/settings/general/go-live) to a
subdomain of your domain, e.g. `auth.your-domain.com`. Corbado will then automatically bind your
passkeys to the root / top-level domain of the provided CNAME unless it is on
the [public suffix list](https://publicsuffix.org/learn/), here to `your-domain.com`.

> :warning: **Passkeys binding and sub-subdomain as CNAME**: If the CNAME you enter in Corbado
> developer panel is a sub-subdomain, e.g. `staging.auth.your-domain.com`, you still need to host
> the `assetlinks.json` file on the root / top-level domain: host `assetlinks.json`
> at `your-domain.com/.well-known/assetlinks.json`, as your relying party ID is the root / top-level
> domain `your-domain.com`.

Moreover, you need to associate your native app in the `assetlinks.json` file. Use the following
JSON template and host it under
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
verify that your `assetlinks.json` file is set up and hosted correctly.

### 3.3 Run the Android app

> **Note**
> You need to have a screen lock set up.
> Moreover, if you use a virtual Android device, it needs to have API 33 (Android 13).

`flutter run --dart-define=from-file=env.json`

In case you run the app inside Android studio, edit the run configuration and
add `--dart-define-from-file=env.json` to the
additional run args.

Now, you are fully set and can start signing up with your first passkey in the example.

### 3.4 Troubleshooting

If you run the application in a virtual Android device, and it says that you can't create a passkey,
you have to properly
set up a screen lock or biometrics on the device. To do so, open the settings, search for security
settings and add a
PIN as well as a fingerprint as shown below (PIN is required for fingerprint):

<img src="https://github.com/corbado/flutter-passkeys/blob/main/packages/passkeys/passkeys/doc/troubleshooting-no-screen-lock.png?raw=true" style="width: 100%" alt="troubleshooting"/>

## 4. iOS

### 4.1 Create an iOS app and configure the example in XCode

We need to establish trust between your iOS app and the relying party server.
Your app will be identified through your **Application Identifier Prefix** (e.g. `9RF9KY77B2`) and
your **Bundle Identifier** (e.g. `com.corbado.passkeys`).
You need an Apple developer account to set up both.
If you haven't got one yet, set up a new account.

**Note:** When creating your Bundle Identifier, make sure that the "Associated Domains" capability
is enabled.

<img src="https://raw.githubusercontent.com/corbado/flutter-passkeys/main/packages/passkeys/passkeys/doc/bundleId.png" style="width: 100%" alt="xcode-associated-domains">

Open the example in Xcode now by opening `packages/passkeys/passkeys/example/ios`.
In *Runner* -> *Signing & Capabilites* enter your *Application Identifier Prefix* and your *Bundle
Identifier*.

### 4.2 Set up an iOS app in Corbado

Make sure that under [*Settings* -> *User interface* -> *Identity
verification*](https://app.corbado.com/app/settings/userinterface) "Option 2: No verification
required" is selected. This should be set by default, when selecting 'Native / mobile app' in
the [previous step](#2-set-up-corbado-project).

Set up an iOS app at [*Settings* -> *Credentials* -> *Native
apps*](https://app.corbado.com/app/settings/credentials/native-apps) by clicking "Add New".
You will need your **Application Identifier Prefix** and your **Bundle Identifier** that we set up
in [step 1](#1-create-an-ios-app-and-configure-the-example-in-xcode).

Afterwards, your relying party server will host an `apple-app-site-association` file
at `https://{PROJECT_ID}}.frontendapi.corbado.io/.well-known/apple-app-site-association`.
This file will by downloaded by iOS when you install your app.
To tell iOS where to look for the file, we need the next step in our setup.

### 4.3 Configure your iOS project

In your Xcode workspace, you need to configure the following settings:
In `Signing & Capabilities` tab, add the `Associated Domains` capability and add the following
domain: `webcredentials:{PROJECT_ID}.frontendapi.corbado.io`
Now, iOS knows where to download the `apple-app-site-association` file from.

If you forget about this step, the example will show you an error message
like `Your app is not associated with your relying party server. You have to add...`.
Your configuration inside Xcode should look something like in the screenshot below (you will have
your own Corbado project ID and a different Bundle Identifier).

<img src="https://raw.githubusercontent.com/corbado/flutter-passkeys/main/packages/passkeys/passkeys/doc/passkeys_example_ios_associated_domains.png" style="width: 100%" alt="xcode-associated-domains">

### 4.4 Start the example

`flutter run --dart-define=CORBADO_PROJECT_ID=<your-corbado-project-id> lib/main.dart`

Now you are fully set and you can start signing up with your first passkey in the example.

If you want to run the example from your IDE, please make sure to either
- set the CORBADO_PROJECT_ID environment variable to your Corbado project ID
- replace `const String.fromEnvironment('CORBADO_PROJECT_ID')` directly in the example with your Corbado project ID

## 5. Outlook

This is a basic sample application that shows how passkeys can be integrated in a Flutter app using
Corbado. This repository will be continuously updated and improved. We already have the following
features on our roadmap that will be pushed within the next weeks:

- [ ] Email magic links open the native Flutter app if openend on mobile device
- [ ] Better cross-device & cross-platform showcase with a web app

If you have questions, feedback or wishes regarding features, please reacht out to us
via [email](mailto:contact@corbado.com) or join our passkeys community
on [Slack](https://join.slack.com/t/corbado/shared_invite/zt-1b7867yz8-V~Xr~ngmSGbt7IA~g16ZsQ).
We're also happy to receive pull requests if you have suggestions for improvement.
