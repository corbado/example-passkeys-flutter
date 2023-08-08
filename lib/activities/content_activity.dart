import 'dart:async';

import 'package:corbado_auth/corbado_auth.dart';
import 'package:corbado_demo/components/custom_button.dart';
import 'package:corbado_demo/services/app_locator.dart';
import 'package:corbado_demo/services/auth_service.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';

class ContentActivity extends StatefulWidget {
  final String username;

  ///Indicates whether the user has just registered
  final bool newUser;

  const ContentActivity(
      {super.key, required this.username, this.newUser = false});

  @override
  _ContentActivityState createState() => _ContentActivityState();
}

class _ContentActivityState extends State<ContentActivity> {
  final AuthService _authService = getIt<AuthService>();

  User? user;
  StreamSubscription? _userSub;

  @override
  void initState() {
    super.initState();
    _userSub = _authService.userSteam.listen((event) {
      if (mounted) setState(() => user = event);
    });
  }

  @override
  Widget build(BuildContext context) {
    var text = widget.newUser ? "Sign-up successful" : "Login successful";
    var text2 = widget.newUser
        ? "Welcome, ${widget.username}!"
        : "Welcome back, ${widget.username}!";
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
                  scale: 4,
                  color: Colors.white70,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Text(
                      text,
                      style: const TextStyle(
                          color: Colors.lightGreen, fontSize: 22),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      text2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 22),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                              text: "Logout",
                              onPress: () => Navigator.of(context).pop())
                        ]))
              ],
            )));
  }

  @override
  void dispose() {
    super.dispose();
    _userSub?.cancel();
  }
}
