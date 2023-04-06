import 'dart:convert';

import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

///Issues api calls to the corbado backend
class CorbadoService {
  final String apiSecret;
  final String projectID;
  static String fingerprint = "";

  static const baseUrlAPI = "https://api.corbado.com/v1";
  static const baseUrlAuth = "http://10.0.2.2:15926/v1";

  CorbadoService(this.apiSecret, this.projectID) {
    debugPrint("CorbadoService constructor: $projectID, $apiSecret");
  }

  Map<String, String> _getHeader() {
    debugPrint("GetFingerprint in getHeader: $fingerprint");
    return <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      //     'authorization':
      //         "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}",
      'X-Corbado-ProjectID': projectID,
      'Origin': fingerprint
    };
  }

  setFingerprint(String base64Hash) {
    debugPrint("setFingerprint: $base64Hash");
    fingerprint = "android:apk-key-hash:$base64Hash";
    debugPrint("after setFingerprint: $fingerprint");
  }

  Object _getClientInfo() async {
    String ipv4 = await Ipify.ipv4();
    var clientInfo = {
      "userAgent": "Corbado Demo Flutter App",
      "remoteAddress": ipv4
    };
    debugPrint("_init clientInfo: $clientInfo");
    return clientInfo;
  }

  Future<String> signInInit(BuildContext context, String email) async {
    debugPrint("Header: ");
    debugPrint(_getHeader().toString());
    var value = await http.post(
        Uri.parse("$baseUrlAuth/users/passkey/login/start"),
        headers: _getHeader(),
        body: jsonEncode({"username": email}));

    debugPrint("signInInit body: ${value.body}");
    var decoded = jsonDecode(value.body);
    if (value.statusCode != 200) {
      throw Exception(value.body);
    }
    debugPrint("decoded: ");
    debugPrint(decoded.toString());
    var decodedData = decoded["data"];
    debugPrint("decodedData: ");
    debugPrint(decodedData.toString());
    return decoded["data"]["challenge"];
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
        headers: _getHeader(),
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
    debugPrint("registerInit url: $baseUrlAuth/users/passkey/register/start");
    var value =
        await http.post(Uri.parse("$baseUrlAuth/users/passkey/register/start"),
            headers: _getHeader(),
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
        headers: _getHeader(),
        body: jsonEncode({"signedChallenge": jsonEncode(pubCred)}));

    debugPrint("registerFinish body: ${value.body}");
    if (value.statusCode == 500) {
      throw Exception(value.body);
    }
    return value.statusCode == 200;
  }
}
