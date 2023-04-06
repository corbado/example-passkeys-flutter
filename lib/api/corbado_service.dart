import 'dart:convert';

import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

///Issues api calls to the corbado backend
class CorbadoService {
  String apiSecret;
  String projectID;
  dynamic header;

  var baseUrlAPI = "https://api.corbado.com/v1";
  var baseUrlAuth = "https://auth.corbado.com/v1";

  var clientInfo = {};
  bool canAuthenticateWithBiometrics = false;
  bool isDeviceSupported = false;

  CorbadoService(this.apiSecret, this.projectID) {
    header = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'authorization':
          "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}"
    };
  }

  Future<void> _init() async {
    String ipv4 = await Ipify.ipv4();
    clientInfo = {
      "userAgent": "Corbado Demo Flutter App",
      "remoteAddress": ipv4
    };
    debugPrint("_init clientInfo: $clientInfo");
  }

  Future<String> signInInit(BuildContext context, String email) async {
    await _init();
    var value = await http.post(
        Uri.parse("$baseUrlAuth/users/passkey/login/start"),
        headers: header,
        body: jsonEncode({"username": email}));

    debugPrint("signInInit body: ${value.body}");
    var data = jsonDecode(value.body);
    if (value.statusCode != 200) {
      throw Exception(value.body);
    }
    return data["data"]["challenge"];
  }

  Future<bool> signInFinish(
      BuildContext context,
      String id,
      String rawId,
      String clientDataJSON,
      String authenticatorData,
      String signature,
      String userHandle) async {
    await _init();
    debugPrint("flutter signInFinish called");
    debugPrint("clientDataJSON: " + clientDataJSON);
    var pubCred = {
      "type": "public-key",
      "id": id,
      "rawId": rawId,
      "response": {
        "clientDataJSON": clientDataJSON,
        "authenticatorData": authenticatorData,
        "signature": signature
      },
      "clientExtensionResults": {}
    };

    var value = await http.post(
        Uri.parse("$baseUrlAuth/users/passkey/login/finish"),
        headers: header,
        body: jsonEncode({"signedChallenge": jsonEncode(pubCred)}));

    debugPrint("signInFinish body: ${value.body}");
    if (value.statusCode == 500) {
      throw Exception(value.body);
    }

    var body = jsonDecode(value.body);
    var sessionToken = body["data"]["sessionToken"];

    return value.statusCode == 200;
  }

  Future<String> registerInit(BuildContext context, String email) async {
    await _init();
    var value =
        await http.post(Uri.parse("$baseUrlAuth/users/passkey/register/start"),
            headers: header,
            body: jsonEncode({
              "username": email,
              "fullName": email,
            }));

    debugPrint("registerInit body: ${value.body}");
    Map<String, dynamic> data = jsonDecode(value.body);
    if (value.statusCode != 200) {
      throw Exception(value.body);
    }

    return data["data"]["challenge"];
  }

  Future<bool> registerFinish(BuildContext context, String id, String rawId,
      String clientDataJSON, String attestationObject) async {
    await _init();
    debugPrint("clientDataJSON: " + clientDataJSON);
    var pubCred = {
      "type": "public-key",
      "id": id,
      "rawId": rawId,
      "authenticatorAttachment": "platform",
      "response": {
        "clientDataJSON": clientDataJSON,
        "attestationObject": attestationObject,
        "transports": []
      },
      "clientExtensionResults": {}
    };

    var value = await http.post(
        Uri.parse("$baseUrlAuth/users/passkey/register/finish"),
        headers: header,
        body: jsonEncode({"signedChallenge": jsonEncode(pubCred)}));

    debugPrint("registerFinish body: ${value.body}");
    if (value.statusCode == 500) {
      throw Exception(value.body);
    }
    return value.statusCode == 200;
  }

  Future<bool> addOrigin(
      BuildContext context, String name, String origin, String rpID) async {
    await _init();
    debugPrint("addOrigin called: $name, $origin, $rpID");

    var value = await http.post(Uri.parse("$baseUrlAPI/webauthn/settings"),
        headers: header,
        body: jsonEncode({
          "name": name,
          "origin": origin,
          "rpID": rpID,
          "clientInfo": clientInfo
        }));

    debugPrint("addOrigin body: ${value.body}");
    if (value.statusCode != 200 && !value.body.contains("already exists")) {
      throw Exception("Could not add origin \n${value.body}");
    }
    return value.statusCode == 200;
  }
}
