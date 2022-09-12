import 'dart:convert';

import 'package:corbado_demo/env.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:local_auth/local_auth.dart';

class CorbadoService {
  final basicAuth =
      "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}";
  final baseUrl = "https://api.corbado.com/v1";
  final origin = "https://api.corbado.com";
  final LocalAuthentication auth = LocalAuthentication();

  void register(BuildContext context, String email) async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool isDeviceSupported = await auth.isDeviceSupported();

    debugPrint(
        "canAuthenticateWithBiometrics : $canAuthenticateWithBiometrics");
    debugPrint("canAuthenticate : $isDeviceSupported");
  }

  Future<String> registerInit(String email) async {
    final ipv4 = await Ipify.ipv4();
    debugPrint("IPv4: $ipv4");
    var clientInfo = {"userAgent": "Corbado Demo App", "remoteAddress": ipv4};
    var value = await http.post(Uri.parse("$baseUrl/webauthn/register/start"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'authorization': basicAuth
        },
        body: jsonEncode({
          "username": email,
          "origin": origin,
          "credentialStatus": "active",
          "clientInfo": clientInfo
        }));
    debugPrint("body: " + value.body);
    Map<String, dynamic> data = jsonDecode(value.body);
    debugPrint("cred: ${data["publicKeyCredentialCreationOptions"]}");

    return data["publicKeyCredentialCreationOptions"];
  }

  void registerFinish(String id, String rawId, String clientDataJSON,
      String attestationObject) async {
    final ipv4 = await Ipify.ipv4();
    debugPrint("IPv4: $ipv4");

    var clientInfo = {"userAgent": "Corbado Demo App", "remoteAddress": ipv4};
    debugPrint("registerFinish called");
    var pubCred = {
      "type": "public-key",
      "id": id,
      "rawId": rawId,
      "authenticatorAttachment": "platform",
      "response": {
        "clientDataJSON": clientDataJSON,
        "attestationObject": attestationObject,
        //       "transports": ["internal"]
        "transports": []
      },
      "clientExtensionResults": {}
    };

    var json = jsonEncode(pubCred);

    debugPrint("pubCred: ${json.substring(0, 200)}");
    debugPrint("pubCred2: ${json.substring(200)}");

    var value = await http.post(Uri.parse("$baseUrl/webauthn/register/finish"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'authorization': basicAuth
        },
        body: jsonEncode({
          "publicKeyCredential": json,
          "origin": origin,
          "clientInfo": clientInfo
        }));

    debugPrint("registerFinish body ${value.body}");
  }
}
