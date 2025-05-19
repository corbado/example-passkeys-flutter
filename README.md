# Flutter Passkeys Example Application

This is a sample implementation of the [Corbado passkeys-first authentication solution](https://www.corbado.com) using Flutter. The following package is being used:

- [Corbado Auth Flutter](https://github.com/corbado/flutter-passkeys/tree/main/packages/corbado_auth)

[![integration-guides](https://github.com/user-attachments/assets/7859201b-a345-4b68-b336-6e2edcc6577b)](https://app.corbado.com/integration-guides/flutter)

## Getting Started

This example demonstrates how you can use the Corbado Auth package to setup Passkey based
authentication in a matter of minutes.

## How to run the example

To get started with the `corbado_auth` it's nice to see a running version of an example application
that uses this package.
You can start the example like this:

1. Run `flutter run lib/main.dart` to start the example (if you want to run on Android or iOS, start
   a Simulator/Emulator beforehand)

## How to integrate the package into your own app

To use `corbado_auth` in your own app, you need to create a free project at
the [Corbado developer panel](https://app.corbado.com).

Integrating the package is not just about running `flutter pub add corbado_auth`.
You need to configure and customize the package, which requires about one hour.

For that we have provided an integration guide that is
available [here](https://app.corbado.com/integration-guides/flutter).

**Note:** Please make sure to also add your project frontend api link to the relying party Id,
Navigate to your project in the developer panel then open Settings > General > URLs and input your
link.
It should be something like `pro-{projectID}.frontendapi.cloud.corbado.io`

## A closer look at the example code

In addition to going through the integration guide it can be helpful to see the `corbado_auth`
package in an example application.
For that, let's take a closer look at this example.

The example is a typical flutter application that makes use of the following libraries:

- go_router (routing)
- riverpod (data binding and state management)
- corbado_auth (authentication)

It consists of 3 pages:

- loading (shown while the app is loading initially)
- authentication (shown when a user signs up or logs in)
- profile (shown for users after signup/log in)

To understand how the `corbado_auth` package is integrated into this example application,
we have to take a look at these files/directories:

- **router.dart**: Here we handle routing that is based on the authentication state (e.g. a user
  that is logged in should not see the authentication screen => that user must be navigated to the
  profile screen).
- **auth_provider.dart**: Here we set up the riverpod providers and thus make authentication state (
  e.g. the user object) and functionality (e.g. the logout function) available throughout the app.
- **pages/auth_page.dart**: Here we define the page that loads the Corbado auth screens. We
  configure it with a set of custom Flutter components (see the next bullet point).
- **screens/\*.dart**: Here we define a set of custom Flutter components. Each of them must
  implement `CorbadoScreen<T>` where `T` is one of 5 currently supported Corbado blocks. Find
  details about this in the `Corbado blocks` section.

### A quick note about Flutter web

Flutter web relies on some JavaScript code that we provide
on [Github](https://github.com/corbado/example-passkeys-flutter/releases/download/2.4.0/bundle.js).
If you want to use `corbado_auth` in a Flutter web application you have to include this JavaScript
bundle as part of your index.html.
You can do this by adding the following `<script>` tag to your `<head>` section.

```
<script src="https://github.com/corbado/example-passkeys-flutter/releases/download/2.4.0/bundle.js" type="application/javascript"></script>
```

For an example how the `index.html` can look check
out [index.html](https://github.com/corbado/example-passkeys-flutter/blob/main/web/index.html).

## Corbado blocks

If you introduce passkeys into your application you will have to define a number of screens in your
flutter app.
A user wants to signup and log in with a passkey. We also have to provide fallbacks for situations
where a user can not use a passkey.
Finally we want to ask users that don't have a passkey yet if they want to create one.

Triggering these screens in the right moments requires quite a bit of logic.
At Corbado we provide this as a service for developers and we make it configurable in our developer
panel.
As a developer you have the freedom of defining your own UI implementation for these screens.

To give you guidance about what data and what functionalities are available for a screen we
introduced the concept of **Corbado blocks**.
One Corbado block (e.g. `SignupInitBlock`) defines the data and functionalities that you can use on
one of these screens.
Adding `corbado_auth` to your app means defining these screens.

### Overview of existing Corbado blocks

Currently, there are 5 Corbado blocks available in the `corbado_auth` package.
Over time we will add additional blocks that you can implement (they are optional).
These 5 blocks are needed by most developers.

#### SignupInitBlock

This block is used to initiate a sign up.
The goal of this block is to ask the user for a unique identifier (currently only email is
supported)
and an optional nice name (we call this a fullname at Corbado).
The corresponding screen will thus be shown when a user starts a new signup in your app.

If the identifier is not available or in the wrong format the block will return an error.

When you implement the screen for this block, you usually want to define one or multiple input
fields
and two buttons ("submit" and "switch to login").
You should also show the errors (ideally close to the input fields).

Check
out [signup_init.dart](https://github.com/corbado/example-passkeys-flutter/blob/main/lib/screens/signup_init.dart)
to see an example implementation for a screen that uses this block.

#### PasskeyAppendBlock

This block is used to create a new passkey.
The corresponding screen will thus be shown during a signup (after the user has provided the
identifier)
or potentially at the end of a login (if no passkey is existing for the user).

If setting up the passkey fails (e.g. because the user has cancelled the operation)
the block allows either a retry or switching to a fallback authentication method (currently
email-otp is supported).

When you implement the screen for this block, you usually want to define two buttons.

Check
out [passkey_append.dart](https://github.com/corbado/example-passkeys-flutter/blob/main/lib/screens/passkey_append.dart)
to see an example implementation for a screen that uses this block.

#### EmailVerifyBlock

This block is used to verify that a user has access to an email address.
The corresponding screen will thus be shown during a signup (e.g. if passkeys are not supported or
if you have configured your Corbado project to verify each email address during signup)
or during a login (if no passkey has been used).

When the screen for this block is rendered, Corbado has already sent out an email to the user
containing a 6-digit code.
The user should provide this code through the screen.
If the code is wrong the block will indicate this through an error.
It then allows to enter the code again or to resend the email (after 30s have passed).

When you implement the screen for this block, you usually want to define one or two buttons (submit
and resend).
Also you need an input field (for the 6-digit code).

Check
out [email_verify_otp.dart](https://github.com/corbado/example-passkeys-flutter/blob/main/lib/screens/email_verify_otp.dart)
to see an example implementation for a screen that uses this block.

#### LoginInitBlock

This block is used to initiate a login process.
The goal of this block is to ask the user for her unique identifier (the email address).
The corresponding screen will thus be shown at the beginning of a login.

When the screen for this block is rendered, conditional UI will be started.
If the user has a passkey available he can log in without typing his identifier.
It that's not the case he has to provide the email address to the block through an input field.

When you implement the screen for this block, you usually want to define one input field (for the
email address).
Also usually you need two buttons ("submit" and "switch to signup").

Check
out [login_init.dart](https://github.com/corbado/example-passkeys-flutter/blob/main/lib/screens/login_init.dart)
to see an example implementation for a screen that uses this block.

#### PasskeyVerifyBlock

This block is used to verify that a user has access to a passkey.
The corresponding screen will thus be shown during a login process.

When the screen for this block is rendered, a passkey authentication is started.
If the user completes it he will move on to the next block (most of the time he directly is logged
in).
If something goes wrong the user can either retry the passkey operation or use a fallback method.

When you implement the screen for this block, you usually want to define two buttons
(one to retry the passkey operation and another one to initiate the fallback).

Check
out [passkey_verify.dart](https://github.com/corbado/example-passkeys-flutter/blob/main/lib/screens/passkey_verify.dart)
to see an example implementation for a screen that uses this block.

### Deep dive: why do we use the concept of Corbado blocks?

We understand that this concept of `blocks` and `screens` might be challenging at the beginning.
From personal experience, integrating authentication (no matter what solution you use) is always a
bit challenging at first.
While passkeys are a great feature for end-users for us developers they tend to make life harder
(at least at the beginning).

With `corbado_auth` we want to reduce complexity as much as possible for you.
We do this on the one hand by implementing parts of the system for you (e.g. the relying party
server and session management)
On the other hand we try to give clear guidance what authentication related functionalities you can
use on which screen.
This means that on each screen just by looking at the corresponding block you quickly get an idea
how you should build the screen.
You still have full control over the UI though.
Most importantly we also render these screens in the right order for you so you don't need to bother
with complex routing during authentication.

## Telemetry

This example application utilizes telemetry events to gain deeper insights into its usage and the SDK's utilization. Such information is instrumental in guiding our prioritization of features that will be most beneficial and impactful for the majority of our users. Read our [official documentation](https://docs.corbado.com/corbado-complete/other/telemetry) for more details.

## Troubleshooting

| Type                | Issue                      | Note                                                                                                                                                                                                          |
| ------------------- | -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| iOS Sim             | Localized string not found | For passkeys to work in the iOS simulator, you need to enable faceID first in the top menu bar under features > faceID > enrolled                                                                             |
| iOS physical device | Passkeys not working       | Passkeys do not work when running your flutter application on your physical iOS device. This has to do with the signing of your app. Rather test on a virtual iOS device or virtual/ physical Android device. |
