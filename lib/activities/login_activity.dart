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
  void initState() {
    super.initState();
    channel.setMethodCallHandler((call) async {
      switch (call.method) {
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

  void onWebauthnRegisterFinish(String arguments) {
    debugPrint("onWebauthnRegisterFinish called " + arguments);
    Codec<String, String> stringToBase64Url = utf8.fuse(base64);
    var options = jsonDecode(arguments);
    debugPrint("After json decode");
    debugPrint("$options");

    String id = options["id"];
    debugPrint("id: $id");

    String rawId = options["rawId"];
    debugPrint("rawID $rawId");
    //  String rawId64 = base64UrlEncode(utf8.encode(rawId));
    //String rawId64 = stringToBase64Url.encode(rawId);
    //String rawId64 = base64Encode(utf8.encode(rawId));
    //debugPrint("rawId64: $rawId64");

    String clientDataJSON = options["clientDataJSON"];
    var clientDecoded = jsonDecode(clientDataJSON);
    var newData = {
      "challenge": clientDecoded["challenge"],
      "origin": "https://api.corbado.com",
      "type": "webauthn.create"
    };
    var parsed = jsonEncode(newData);
    debugPrint("parsed: " + parsed);

    //  String clientDataJSON64 = base64UrlEncode(utf8.encode(parsed));
    //String clientDataJSON64 = stringToBase64Url.encode(parsed);
    String clientDataJSON64 = base64UrlEncode(utf8.encode(parsed));

    //  clientDataJSON64 =
    //      clientDataJSON64.substring(0, clientDataJSON64.length - 1);
    debugPrint("clientDataJSON: $clientDataJSON64");

    String attestationObject = options["attestationObject"];
    //  String attestationObject64 =
    //      base64UrlEncode(utf8.encode(attestationObject));
    //String attestationObject64 = stringToBase64Url.encode(attestationObject);
    //String attestationObject64 = base64Encode(utf8.encode(attestationObject));

    //  String attestationObjectWeb =
    //      "o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVkBZypeqvzC0koCqzmr6JfEBUQ5vCqVRbSyv3BeBeqAqczkRQAAAAAAAAAAAAAAAAAAAAAAAAAAACDpTGljts1FUs92OZi2xGHEhWktXK7itnB-IkHPA06D8KQBAwM5AQAgWQEAyaR0c8XcjmSRwXNRv3YjJrlrxh9_zcb05-QX0_28_sEy0NfoszHuwonxsCaE2Ck6zyebBfhmqDrSHTqbKcyrERJFESLaqBIWs9FDOj2I9-PswBoST4zkZ_TKrA4Z01VBajuFtjQDnb7pTMu0r52kHIIIzhEetTK61fwWsZIcMrETvyuF-GeV2Kxbe7TQPRrh736Ome7hht4B5X-RQ20PWblXWMXRYww5dBX6c-c56lPduC4fm1NHIOowt3JILJFSNADquO3opdPCtQXC7KK5Hc-y8R3y8567sxTW-BNPCQhVmeCpdo4revsvZLFfLm5pG79Df5No8E7NL9hIKVKHqSFDAQAB";
    debugPrint("attestationObject64: $attestationObject");
    //   debugPrint("attestationObjectWeb: $attestationObjectWeb");

    clientDataJSON64 =
        clientDataJSON64.substring(0, clientDataJSON64.length - 1);
    //attestationObject =
    //    attestationObject.substring(0, attestationObject.length - 1);

    CorbadoService()
        .registerFinish(id, rawId, clientDataJSON64, attestationObject);
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
