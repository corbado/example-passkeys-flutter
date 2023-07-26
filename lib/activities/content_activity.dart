import 'package:corbado_demo/components/custom_button.dart';
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
  @override
  Widget build(BuildContext context) {
    var text = widget.newUser ? "Sign-up successful" : "Login successful";
    var text2 = widget.newUser
        ? "Welcome!\nPlease confirm your sign-up by clicking the link sent to ${widget.username}"
        : "Welcome back!";
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
}
