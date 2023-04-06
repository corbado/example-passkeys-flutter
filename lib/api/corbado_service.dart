import 'dart:convert';

import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

///Issues api calls to the corbado backend
class CorbadoService {
  final String apiSecret;
  final String projectID;

  static const baseUrlAPI = "https://api.corbado.com/v1";
  static const baseUrlAuth = "https://auth.corbado.com/v1";

  const CorbadoService(this.apiSecret, this.projectID);

  Map<String, String> getHeader() {
    return <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'authorization':
          "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}"
    };
  }

  Object getClientInfo() async {
    String ipv4 = await Ipify.ipv4();
    var clientInfo = {
      "userAgent": "Corbado Demo Flutter App",
      "remoteAddress": ipv4
    };
    debugPrint("_init clientInfo: $clientInfo");
    return clientInfo;
  }

  Future<String> signInInit(BuildContext context, String email) async {
    var value = await http.post(
        Uri.parse("$baseUrlAuth/users/passkey/login/start"),
        headers: await getHeader(),
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
        headers: getHeader(),
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
    var value =
        await http.post(Uri.parse("$baseUrlAuth/users/passkey/register/start"),
            headers: getHeader(),
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
        headers: getHeader(),
        body: jsonEncode({"signedChallenge": jsonEncode(pubCred)}));

    debugPrint("registerFinish body: ${value.body}");
    if (value.statusCode == 500) {
      throw Exception(value.body);
    }
    return value.statusCode == 200;
  }
}
