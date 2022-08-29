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
  static const platform = MethodChannel("com.corbado.flutterapp/webauthn");

  void auth() async {
    var registerRes =
        await CorbadoService().registerInit(usernameController.text);
    try {
      debugPrint("before login auth");
      final int result =
          await platform.invokeMethod("webauthnRegister", registerRes);
      debugPrint("login auth result: $result");
    } on PlatformException catch (e) {
      debugPrint("Platform Exception meeeeep $e");
    }
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
