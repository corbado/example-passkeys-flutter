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

  var baseUrl = "https://api.corbado.com/v1";
  var _origin = "";

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

  setOrigin(BuildContext context, String origin) {
    _origin = origin;
    addOrigin(context, "Android", origin);
  }

  Future<void> _init() async {
    String ipv4 = await Ipify.ipv4();
    clientInfo = {"userAgent": "Corbado Demo Flutter App", "remoteAddress": ipv4};
    debugPrint("_init clientInfo: $clientInfo");
  }

  Future<String> signInInit(BuildContext context, String email) async {
    await _init();
    var value = await http.post(
        Uri.parse("$baseUrl/webauthn/authenticate/start"),
        headers: header,
        body: jsonEncode(
            {"username": email, "origin": _origin, "clientInfo": clientInfo}));

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

    var value =
        await http.post(Uri.parse("$baseUrl/webauthn/authenticate/finish"),
            headers: header,
            body: jsonEncode({
              "publicKeyCredential": jsonEncode(pubCred),
              "origin": _origin,
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
          "origin": _origin,
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

    var value = await http.post(Uri.parse("$baseUrl/webauthn/register/finish"),
        headers: header,
        body: jsonEncode({
          "publicKeyCredential": jsonEncode(pubCred),
          "origin": _origin,
          "clientInfo": clientInfo
        }));

    debugPrint("registerFinish body: ${value.body}");
    if (value.statusCode != 200){
      showCustomDialog(context, "Error", value.body);
    }
    return value.statusCode == 200;
  }

Future<bool> addOrigin(BuildContext context, String name, String origin) async {
  await _init();

  var value = await http.post(Uri.parse("$baseUrl/webauthn/settings"),
      headers: header,
      body: jsonEncode({
        "name": name,
        "origin": origin,
        "clientInfo": clientInfo
      }));

  debugPrint("addOrigin body: ${value.body}");
  if (value.statusCode != 200){
    if(!value.body.contains("already exists")) {
      showCustomDialog(context, "Could not add origin", value.body);
    }
  }
  return value.statusCode == 200;
}
}
