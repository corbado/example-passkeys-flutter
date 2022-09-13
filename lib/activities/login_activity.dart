import 'dart:convert';

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
      }
    });
  }

  void register() async {
    var registerRes = await corbadoSvc.registerInit(usernameController.text);
    try {
      final int result =
          await channel.invokeMethod("webauthnRegister", registerRes);
    } on PlatformException catch (e) {
      debugPrint(e.stacktrace);
    }
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

  void onWebauthnSignInFinish(String arguments) {
    debugPrint("onWebauthnSignInFinish called!");
  }

  void onWebauthnRegisterFinish(String arguments) {
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

    corbadoSvc.registerFinish(id, rawId, clientDataJSON64, attestationObject);
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
                    padding: const EdgeInsets.only(top: 150),
                    child: TextField(
                      controller: usernameController,
                      decoration: const InputDecoration(hintText: "Email"),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _getButton("Registrieren", register),
                          _getButton("Einloggen", signIn)
                        ]))
              ],
            )));
  }

  Widget _getButton(String text, void Function() onPress) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
