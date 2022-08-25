import 'dart:convert';

import 'package:corbado_demo/components/dialog.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

///Issues api calls to the corbado backend
class CorbadoService {

  String apiSecret;
  String projectID;
  dynamic header;

  CorbadoService(this.apiSecret, this.projectID) {
    header = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'authorization':
          "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}"
    };
  }

  final baseUrl = "https://api.corbado.com/v1";

  final origin = "https://api.corbado.com";

  var clientInfo = {};
  bool canAuthenticateWithBiometrics = false;
  bool isDeviceSupported = false;

  Future<void> _init() async {
    String ipv4 = await Ipify.ipv4();
    clientInfo = {"userAgent": "Test34 fffs", "remoteAddress": ipv4};
    debugPrint("_init clientInfo: $clientInfo");
  }

  Future<String> signInInit(BuildContext context, String email) async {
    await _init();
    var value = await http.post(
        Uri.parse("$baseUrl/webauthn/authenticate/start"),
        headers: header,
        body: jsonEncode(
            {"username": email, "origin": origin, "clientInfo": clientInfo}));

    Map<String, dynamic> data = jsonDecode(value.body);
    if (value.statusCode != 200){
      showCustomDialog(context, "Error", value.body);
    }
    return data["publicKeyCredentialRequestOptions"];
  }

  Future<bool> signInFinish(BuildContext context, String id, String rawId, String clientDataJSON,
      String authenticatorData, String signature, String userHandle) async {
    await _init();
    debugPrint("flutter signInFinish called");
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

    var value =
        await http.post(Uri.parse("$baseUrl/webauthn/authenticate/finish"),
            headers: header,
            body: jsonEncode({
              "publicKeyCredential": jsonEncode(pubCred),
              "origin": origin,
              "clientInfo": clientInfo
            }));

    if (value.statusCode != 200){
      showCustomDialog(context, "Error", value.body);
    }
    debugPrint("signInFinish body: ${value.body}");
    return value.statusCode == 200;
  }

  Future<String> registerInit(BuildContext context, String email) async {
    await _init();
    var value = await http.post(Uri.parse("$baseUrl/webauthn/register/start"),
        headers: header,
        body: jsonEncode({
          "username": email,
          "credentialStatus": "active",
          "origin": origin,
          "clientInfo": clientInfo
        }));

    Map<String, dynamic> data = jsonDecode(value.body);

    if (value.statusCode != 200){
      showCustomDialog(context, "Error", value.body);
    }
    return data["publicKeyCredentialCreationOptions"];
  }

  Future<bool> registerFinish(BuildContext context, String id, String rawId, String clientDataJSON,
      String attestationObject) async {
    await _init();
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

    var value = await http.post(Uri.parse("$baseUrl/webauthn/register/finish"),
        headers: header,
        body: jsonEncode({
          "publicKeyCredential": jsonEncode(pubCred),
          "origin": origin,
          "clientInfo": clientInfo
        }));

    debugPrint("registerFinish body: ${value.body}");
    if (value.statusCode != 200){
      showCustomDialog(context, "Error", value.body);
    }
    return value.statusCode == 200;
  }
}
