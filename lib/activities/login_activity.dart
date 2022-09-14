import 'dart:convert';

import 'package:corbado_demo/activities/content_activity.dart';
import 'package:corbado_demo/components/custom_button.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:corbado_demo/webauthn/corbado_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginActivity extends StatefulWidget {
  @override
  _LoginActivityState createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  TextEditingController usernameController = TextEditingController();
  static const channel = MethodChannel("com.corbado.flutterapp/webauthn");
  var corbadoSvc = CorbadoService();

  bool canAuthenticate = false;

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
            canAuthenticate = call.arguments;
          });
          break;
      }
    });
  }

  void signIn() async {
    var signInRes = await corbadoSvc.signInInit(usernameController.text);
    try {
      final int result =
          await channel.invokeMethod("webauthnSignIn", signInRes);
    } on PlatformException catch (e) {
      debugPrint(e.stacktrace);
    }
  }

  void onWebauthnSignInFinish(String arguments) async {
    var options = jsonDecode(arguments);

    String id = options["id"];
    String rawId = options["rawId"];
    String clientDataJSON = options["clientDataJSON"];
    String authenticatorData = options["authenticatorData"];
    String signature = options["signature"];

    String userHandle = "";
    if (options["userHandle"] != null) {
      userHandle = options["userHandle"];
    }

    debugPrint("id: $id");
    debugPrint("rawId: $rawId");
    debugPrint("clientDataJSON: $clientDataJSON");
    debugPrint("authenticatorData: $authenticatorData");
    debugPrint("signature: $signature");
    debugPrint("userHandle: $userHandle");

    var clientDecoded = jsonDecode(clientDataJSON);
    var newData = {
      "challenge": clientDecoded["challenge"],
      "origin": "https://api.corbado.com",
      "type": "webauthn.get"
    };

    var parsed = jsonEncode(newData);
    String clientDataJSON64 = base64UrlEncode(utf8.encode(parsed));
    //Remove padding
    clientDataJSON64 = clientDataJSON64.replaceAll("=", "");
    bool success = await corbadoSvc.signInFinish(
        id, rawId, clientDataJSON64, authenticatorData, signature, userHandle);
    if (success) _launchContentActivity(false);
  }

  void _launchContentActivity(bool newUser) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ContentActivity(
                name: usernameController.text,
                newUser: newUser,
              )));

  void register() async {
    var registerRes = await corbadoSvc.registerInit(usernameController.text);
    try {
      final int result =
          await channel.invokeMethod("webauthnRegister", registerRes);
    } on PlatformException catch (e) {
      debugPrint(e.stacktrace);
    }
  }

  void onWebauthnRegisterFinish(String arguments) async {
    var options = jsonDecode(arguments);
    String id = options["id"];
    String rawId = options["rawId"];
    String clientDataJSON = options["clientDataJSON"];
    String attestationObject = options["attestationObject"];

    var clientDecoded = jsonDecode(clientDataJSON);
    var newData = {
      "challenge": clientDecoded["challenge"],
      "origin": "https://api.corbado.com",
      "type": "webauthn.create"
    };

    var parsed = jsonEncode(newData);
    String clientDataJSON64 = base64UrlEncode(utf8.encode(parsed));
    //Remove padding
    clientDataJSON64 = clientDataJSON64.replaceAll("=", "");
    bool success = await corbadoSvc.registerFinish(
        id, rawId, clientDataJSON64, attestationObject);
    if (success) _launchContentActivity(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corbadoDark,
        body: Container(
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
                  padding: EdgeInsets.only(top: 80),
                  child: Text(
                    "Passkey authentication is possible",
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: TextField(
                      controller: usernameController,
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
                        ]))
              ],
            )));
  }
}
