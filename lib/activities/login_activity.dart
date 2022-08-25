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
        appBar: AppBar(title: const Text("Login")),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(hintText: "Email"),
                  )),
                  ElevatedButton(
                      onPressed: () {
                        debugPrint("elevated button clicked");
                        CorbadoService().register(context, "Test@web.de");
                      },
                      child: Text("Register"))
                ])));
  }
}
