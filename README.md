# Complete integration example for Corbado API with Flutter
This is a sample implementation of a Flutter app with integration to Corbado API.

## 1. File structure
(soon)

## 2. Setup

### 2.1 Prerequisites
Please follow the steps in [Getting started](https://docs.corbado.com/overview/getting-started) to create and configure a project in our [developer panel](https://app.corbado.com).

### 2.2 Configure environment variables
Use the values you obtained in step 2.1 to configure the following variables inside `lib/env.dart`:
1. **projectID**: The project ID (pro-xxxx).
2. **apiSecret**: The API secret (something cryptic).

2.3 Configuring iOS Associated Domains
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
The JSON file needs to be stored under ```https://<your fully qualified domain>/.well-known/apple-app-site-association```.
For example: ```https://api.corbado.com/.well-known/apple-app-site-association```. The port number, if needed, can be added in the URL, after the fully qualified domain. 

The fully qualified domain should then be provided as an environment variable ```RELYING_PARTY_ID``` in the corresponding Xcode Project of your application. For example, in case of ```https://api.corbado.com/.well-known/apple-app-site-association```, the environment variables should include ```RELYING_PARTY_ID = "api.corbado.com"```. 

To learn more about associated domains visit: [Apple Developer Supporting Associated Domains](https://developer.apple.com/documentation/xcode/supporting-associated-domains).


## 3. Usage
(soon)
