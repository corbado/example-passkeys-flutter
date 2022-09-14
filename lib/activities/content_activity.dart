import 'package:corbado_demo/components/custom_button.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';

class ContentActivity extends StatefulWidget {
  ///Name of the user
  final String name;

  ///Indicates whether the user has just registered
  final bool newUser;

  const ContentActivity({super.key, required this.name, this.newUser = false});

  @override
  _ContentActivityState createState() => _ContentActivityState();
}

class _ContentActivityState extends State<ContentActivity> {
  @override
  Widget build(BuildContext context) {
    var text =
        widget.newUser ? "Registrierung erfolgreich" : "Login erfolgreich";
    var text2 = widget.newUser
        ? "Willkommen, ${widget.name}!"
        : "Willkommen zurück, ${widget.name}!";
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
                    padding: const EdgeInsets.only(top: 150),
                    child: Text(
                      text,
                      style: const TextStyle(color: Colors.white, fontSize: 22),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      text2,
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
