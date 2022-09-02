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

  @override
  void initState(){
    super.initState();
    channel.setMethodCallHandler((call) async {
      switch(call.method){
        case "onWebauthnRegisterFinish":
          onWebauthnRegisterFinish(call.arguments);
      }
    });
  }

  void auth() async {
    var registerRes =
        await CorbadoService().registerInit(usernameController.text);
    try {
      final int result =
          await channel.invokeMethod("webauthnRegister", registerRes);
      debugPrint("login auth result: $result");
    } on PlatformException catch (e) {
      debugPrint(e.stacktrace);
    }
  }

  void onWebauthnRegisterFinish(String arguments){
    debugPrint("onWebauthnRegisterFinish called " + arguments);
    var options = jsonDecode(arguments);
    debugPrint("After json decode");

    String id = options["id"];
    debugPrint("id: $id");

    String rawId = options["rawId"];
    String rawId64 = base64Encode(utf8.encode(rawId));
    debugPrint("rawId: $rawId64");

    String clientDataJSON = options["clientDataJSON"];
    String clientDataJSON64 = base64Encode(utf8.encode(clientDataJSON));
    debugPrint("clientDataJSON: $clientDataJSON64");

    String attestationObject = options["attestationObject"];
    String attestationObject64 = base64Encode(utf8.encode(attestationObject));
    debugPrint("attestationObject: $attestationObject64");

    CorbadoService().registerFinish(id, rawId64, clientDataJSON64, attestationObject64);
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
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint("elevated button clicked");
                        //     CorbadoService()
                        //         .register(context, usernameController.text);
                        auth();
                      },
                      child: const Text(
                        "Registrieren",
                        style: TextStyle(fontSize: 18),
                      ),
                    ))
              ],
            )));
  }
}
