import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:corbado_demo/activities/content_activity.dart';
import 'package:corbado_demo/api/corbado_service.dart';
import 'package:corbado_demo/components/custom_button.dart';
import 'package:corbado_demo/components/dialog.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart';

class LoginActivity extends StatefulWidget {
  final String projectID;
  late final CorbadoService corbadoSvc;

  LoginActivity({super.key})
      : projectID =
            const String.fromEnvironment("PROJECT_ID", defaultValue: "") {
    if (!projectID.startsWith("pro-")) {
      throw Exception("ProjectID not configured");
    }
    corbadoSvc =
        CorbadoService("https://$projectID.auth.corbado.com/v1", projectID);
  }

  @override
  _LoginActivityState createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  final TextEditingController usernameController = TextEditingController();

  ///Channel used to communicate with native android
  static const channel = MethodChannel("com.corbado.flutterapp/webauthn");

  Color deviceSupportedTextColor = Colors.white;
  String deviceSupportedText = "Checking if your device supports passkeys...";

  @override
  void initState() {
    super.initState();
    channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case "onWebauthnRegisterFinish":
          onWebauthnRegisterFinish(call.arguments);
          break;
        case "onWebauthnSignInFinish":
          onWebauthnSignInFinish(call.arguments);
          break;
        case "onCanAuthenticateFinish":
          setState(() {
            bool canAuthenticate = call.arguments;
            deviceSupportedTextColor =
                canAuthenticate ? Colors.lightGreen : Colors.redAccent;
            deviceSupportedText = canAuthenticate
                ? "Your device supports passkey authentication"
                : "Your device does not support passkey authentication yet. Solution:"
                    "\n1. In 'Settings->Security->Screen lock' add a PIN."
                    "\n2. In 'Settings->Security->Pixel imprint' add a fingerprint";
          });
          break;
        case "onCertFingerprint":
          final h = (call.arguments as String).replaceAll(":", "");
          final b = base64Url.encode(hex.decode(h));
          final c = b.replaceAll("=", "");
          debugPrint(
              "########################### Fingerprint ###########################");
          debugPrint("SHA256: ${(call.arguments as String).toUpperCase()}");
          debugPrint("Base64URL encoded: $c");
          debugPrint(
              "###################################################################");
          widget.corbadoSvc.setOrigin("android:apk-key-hash:$c");
          break;
      }
    });

    //To be able to display whether the device supports passkey authentication
    channel.invokeMethod("getCertFingerprint");
    channel.invokeMethod("canAuthenticate");
  }

  ///Called if signup or login is successful
  void _launchContentActivity(bool newUser, String credentialId) => {
        FocusManager.instance.primaryFocus?.unfocus(),
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ContentActivity(
                  username: usernameController.text,
                  credentialId: credentialId,
                  newUser: newUser,
                )))
      };

  void _showError(String err) =>
      showToast(err, duration: const Duration(seconds: 6));

  ///Gets the PublicKeyCredentialCreationOptions from the corbado service and
  ///issues a call to native android for signup
  void register() async {
    if (usernameController.text.isEmpty) {
      _showError("Textfield must not be empty");
      return;
    }

    try {
      var registerRes = await widget.corbadoSvc
          .registerInit(context, usernameController.text);
      await channel.invokeMethod("webauthnRegister", registerRes);
    } on PlatformException catch (e) {
      debugPrint(e.stacktrace);
    } on Exception catch (e) {
      showCustomDialog(context, "API Error", e.toString());
    }
  }

  ///Called by native android when authentication is completed
  void onWebauthnRegisterFinish(String arguments) async {
    var options = jsonDecode(arguments);
    String id = options["id"];
    String rawId = options["rawId"];
    String clientDataJSON = options["clientDataJSON"];
    String attestationObject = options["attestationObject"];

    try {
      bool success = await widget.corbadoSvc.registerFinish(
          context, id, rawId, clientDataJSON, attestationObject);
      if (success) {
        _launchContentActivity(true, id);
      } else {
        throw Exception("Sign up failed");
      }
    } on Exception catch (e) {
      showCustomDialog(context, "API Error", e.toString());
    }
  }

  ///Gets the PublicKeyCredentialRequestOptions from the corbado service and
  ///issues a call to native android for signup
  void signIn() async {
    if (usernameController.text.isEmpty) {
      _showError("Textfield must not be empty");
      return;
    }
    try {
      var signInRes =
          await widget.corbadoSvc.signInInit(context, usernameController.text);
      if (signInRes.isEmpty) {
        throw Exception(
            "You don't have a confirmed passkey yet. Make sure you click the link in the email you received after signing up.");
      }
      await channel.invokeMethod("webauthnSignIn", signInRes);
    } on PlatformException catch (e) {
      debugPrint(e.stacktrace);
    } on Exception catch (e) {
      showCustomDialog(context, "API Error", e.toString());
    }
  }

  ///Called by native android when authentication is completed
  void onWebauthnSignInFinish(String arguments) async {
    var options = jsonDecode(arguments);

    String id = options["id"];
    String rawId = options["rawId"];
    String clientDataJSON = options["clientDataJSON"];
    String authenticatorData = options["authenticatorData"];
    String signature = options["signature"];

    //User handle only exists if a resident Key was requested during signup
    String userHandle = "";
    if (options["userHandle"] != null) {
      userHandle = options["userHandle"];
    }

    try {
      bool success = await widget.corbadoSvc.signInFinish(context, id, rawId,
          clientDataJSON, authenticatorData, signature, userHandle);
      if (success) {
        _launchContentActivity(false, id);
      } else {
        throw Exception("Sign in unsuccessful");
      }
    } on Exception catch (e) {
      showCustomDialog(context, "API Error", e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var projectIDText = "Project ID: ${widget.projectID}";

    return Scaffold(
        backgroundColor: corbadoDark,
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      "assets/corbado_logo.png",
                      scale: 2,
                      color: Colors.white70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        projectIDText,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text(
                        deviceSupportedText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: deviceSupportedTextColor, fontSize: 16),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextField(
                          controller: usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(hintText: "Email"),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(text: "Sign up", onPress: register),
                              CustomButton(text: "Login", onPress: signIn)
                            ])),
                  ],
                ))));
  }
}
