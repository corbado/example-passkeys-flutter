import 'dart:async';

import 'package:corbado_demo/activities/content_activity.dart';
import 'package:corbado_demo/components/custom_button.dart';
import 'package:corbado_demo/services/app_locator.dart';
import 'package:corbado_demo/services/auth_service.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class LoginActivity extends StatefulWidget {
  final String projectID;
  final bool emailLinkRedirect;

  LoginActivity({super.key, this.emailLinkRedirect = false})
      : projectID = const String.fromEnvironment('PROJECT_ID');

  @override
  _LoginActivityState createState() => _LoginActivityState(emailLinkRedirect);
}

class _LoginActivityState extends State<LoginActivity> {
  bool _showRedirectMessage;
  final AuthService _authService = getIt<AuthService>();
  final TextEditingController usernameController = TextEditingController();

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
      final maybeError = await _authService.register(email: username);
      if (maybeError != null) {
        _showError(maybeError);
      } else {
        _launchContentActivity(true);
      }
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
      await _authService.signIn(email: username);
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
                        padding: const EdgeInsets.only(top: 120),
                        child: AutofillGroup(
                            child: TextField(
                          controller: usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(hintText: "Email"),
                          autofillHints: const <String>[
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

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }
}
