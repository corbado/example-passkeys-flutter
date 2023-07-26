import 'dart:async';

import 'package:corbado_auth/corbado_auth.dart';
import 'package:corbado_demo/activities/content_activity.dart';
import 'package:corbado_demo/api/corbado_service.dart';
import 'package:corbado_demo/components/custom_button.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class LoginActivity extends StatefulWidget {
  final String projectID;
  final bool emailLinkRedirect;
  late final CorbadoAuth corbadoAuth;
  late final CorbadoService corbadoSvc;

  LoginActivity({super.key, this.emailLinkRedirect = false})
      : projectID =
            const String.fromEnvironment("PROJECT_ID", defaultValue: "") {
    if (!projectID.startsWith("pro-")) {
      throw Exception("ProjectID not configured");
    }
    corbadoAuth = CorbadoAuth(projectID);
    corbadoSvc = CorbadoService(
        "https://$projectID.frontendapi.corbado.io/v1", projectID);
  }

  @override
  _LoginActivityState createState() => _LoginActivityState(emailLinkRedirect);
}

class _LoginActivityState extends State<LoginActivity> {
  bool _showRedirectMessage;
  final TextEditingController usernameController = TextEditingController();

  Color deviceSupportedTextColor = Colors.white;
  String deviceSupportedText = "Checking if your device supports passkeys...";
  final bool emailLinkRedirect;
  String redirectedFromEmailLinkText =
      "Thanks for confirming your email! You can now login with your new passkey!";

  _LoginActivityState(this.emailLinkRedirect)
      : _showRedirectMessage = emailLinkRedirect {
    if (emailLinkRedirect) {
      Timer(const Duration(seconds: 5), () {
        setState(() {
          _showRedirectMessage = false;
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  ///Called if signup or login is successful
  void _launchContentActivity(bool newUser) => {
        FocusManager.instance.primaryFocus?.unfocus(),
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ContentActivity(
                  username: usernameController.text,
                  newUser: newUser,
                )))
      };

  void _showError(String err) =>
      {debugPrint(err), showToast(err, duration: const Duration(seconds: 6))};

  void register() async {
    var username = usernameController.text;
    if (username.isEmpty) {
      _showError("Textfield must not be empty");
      return;
    }

    try {
      final maybeError = await widget.corbadoAuth
          .registerWithPasskey(email: username, fullName: username);
      if (maybeError != null) {
        _showError(maybeError);
      }
      _launchContentActivity(true);
    } catch (e) {
      _showError(e.toString());
    }
  }

  void signIn() async {
    var username = usernameController.text;
    if (username.isEmpty) {
      _showError("Textfield must not be empty");
      return;
    }

    try {
      await widget.corbadoAuth.signInWithPasskey(email: username);
      _launchContentActivity(false);
    } catch (e) {
      _showError(e.toString());
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
                    if (_showRedirectMessage)
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          redirectedFromEmailLinkText,
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                          ),
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
                        child: AutofillGroup(
                            child: TextField(
                          controller: usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(hintText: "Email"),
                          autofillHints: <String>[
                            AutofillHints.email
                          ], // Add this line
                        ))),
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
