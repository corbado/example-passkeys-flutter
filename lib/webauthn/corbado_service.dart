import 'dart:convert';

import 'package:corbado_demo/env.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:local_auth/local_auth.dart';

class CorbadoService {
  final baseUrl = "https://api.corbado.com/v1";
  final origin = "https://api.corbado.com";
  final LocalAuthentication auth = LocalAuthentication();
  final header = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'authorization':
        "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}"
  };

  var clientInfo = {};
  bool canAuthenticateWithBiometrics = false;
  bool isDeviceSupported = false;

  Future<void> _init() async {
    String ipv4 = await Ipify.ipv4();
    clientInfo = {"userAgent": "Corbado Demo App", "remoteAddress": ipv4};
    debugPrint("_init clientInfo: $clientInfo");
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool isDeviceSupported = await auth.isDeviceSupported();
  }

  Future<String> signInInit(String email) async {
    await _init();
    var value = await http.post(
        Uri.parse("$baseUrl/webauthn/authenticate/start"),
        headers: header,
        body: jsonEncode(
            {"username": email, "origin": origin, "clientInfo": clientInfo}));

    debugPrint("loginInit body: ${value.body}");
    Map<String, dynamic> data = jsonDecode(value.body);
    return data["publicKeyCredentialRequestOptions"];
  }

  void signInFinish() async {}

  Future<String> registerInit(String email) async {
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
    return data["publicKeyCredentialCreationOptions"];
  }

  void registerFinish(String id, String rawId, String clientDataJSON,
      String attestationObject) async {
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

    var json = jsonEncode(pubCred);

    debugPrint("pubCred: ${json.substring(0, 200)}");
    debugPrint("pubCred2: ${json.substring(200)}");
    debugPrint("clientInfo $clientInfo");

    var value = await http.post(Uri.parse("$baseUrl/webauthn/register/finish"),
        headers: header,
        body: jsonEncode({
          "publicKeyCredential": json,
          "origin": origin,
          "clientInfo": clientInfo
        }));

    debugPrint("registerFinish result ${value.body}");
  }
}
