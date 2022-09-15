import 'dart:convert';

import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:local_auth/local_auth.dart';

class CorbadoService {
  //--------------- PROD
  //final baseUrl = "https://api.corbado.com/v1";
  //final origin = "https://api.corbado.com";
  /*final header = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'authorization':
        "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}"
  };
   */

  //--------------- DEV
  final baseUrl = "http://10.0.2.2:15902/v1";
  final origin =
      "android:apk-key-hash:6DW5tHjq2JiL5BabpbyC7DCh348dcEdIBzoJQjCNYxw";

  final header = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'authorization': "Basic ${base64.encode(utf8.encode('pro-1:secret'))}"
  };

  final LocalAuthentication auth = LocalAuthentication();

  var clientInfo = {};
  bool canAuthenticateWithBiometrics = false;
  bool isDeviceSupported = false;

  Future<void> _init() async {
    String ipv4 = await Ipify.ipv4();
    clientInfo = {"userAgent": "Test34 fffs", "remoteAddress": ipv4};
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

  Future<bool> signInFinish(String id, String rawId, String clientDataJSON,
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

    var json = jsonEncode(pubCred);

    debugPrint("pubCred: ${json.substring(0, 200)}");
    debugPrint("pubCred2: ${json.substring(200)}");

    var value = await http.post(
        Uri.parse("$baseUrl/webauthn/authenticate/finish"),
        headers: header,
        body: jsonEncode({
          "publicKeyCredential": json,
          "origin": origin,
          "clientInfo": clientInfo
        }));

    debugPrint("authenticateFinish result ${value.body}");
    return value.statusCode == 200;
  }

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
    debugPrint("registerInit body: ${value.body}");
    Map<String, dynamic> data = jsonDecode(value.body);
    return data["publicKeyCredentialCreationOptions"];
  }

  Future<bool> registerFinish(String id, String rawId, String clientDataJSON,
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
    return value.statusCode == 200;
  }
}
