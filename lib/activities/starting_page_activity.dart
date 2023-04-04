import 'package:corbado_demo/activities/login_activity.dart';
import 'package:corbado_demo/components/custom_button.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:localstorage/localstorage.dart';

class StartingPageActivity extends StatefulWidget {
  @override
  _StartingPageActivity createState() => _StartingPageActivity();
}

class _StartingPageActivity extends State<StartingPageActivity> {
  final LocalStorage storage = new LocalStorage('localstorage_app');

  TextEditingController apiKeyController = TextEditingController();
  TextEditingController projectIDController = TextEditingController();

  void _showError(String err) => showToast(err);

  ///Called on submit with the api key and project id
  void _launchLoginActivity(String apiKey, String projectID) => {
        FocusManager.instance.primaryFocus?.unfocus(),
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => LoginActivity(apiKey, projectID)))
      };

  void submit() async {
    if (apiKeyController.text.isEmpty) {
      _showError("Textfield must not be empty");
      return;
    }

    await storage.setItem("privateKey", apiKeyController.text);
    await storage.setItem("projectID", projectIDController.text);

    debugPrint("privateKey: ${storage.getItem("privateKey")}");
    debugPrint("projectID: ${storage.getItem("projectID")}");

    var apiKey = await storage.getItem("privateKey");
    var projectID = await storage.getItem("projectID");

    _launchLoginActivity(apiKey, projectID);
  }

  @override
  Widget build(BuildContext context) {
    var text = "Please provide your API private key and Project ID to continue";
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
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      text,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      controller: projectIDController,
                      decoration: const InputDecoration(hintText: "Project ID"),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      controller: apiKeyController,
                      decoration:
                          const InputDecoration(hintText: "API Secret Key"),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(text: "Next", onPress: submit),
                        ]))
              ],
            )));
  }
}
