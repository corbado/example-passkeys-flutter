import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

///Issues api calls to the corbado backend
class CorbadoService {
  final String baseUrlAuth;
  final String projectID;
  static String origin = "";

  CorbadoService(this.baseUrlAuth, this.projectID) {
    debugPrint("Using auth endpoint $baseUrlAuth for projectID $projectID");
  }

  setOrigin(String origin) {
    CorbadoService.origin = origin;
  }

  Future<dynamic> handler(String url, Object body) async {
    debugPrint("Calling $url...");
    debugPrint("Requestbody: ${jsonEncode(body)}");
    var errorStr = " Error calling $url\n\n";
    var resp = await http.post(Uri.parse("$baseUrlAuth$url"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'X-Corbado-ProjectID': projectID,
          'Origin': origin,
        },
        body: jsonEncode(body));
    debugPrint("Response: ${resp.body}");

    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else if (resp.statusCode == 400) {
      var body = jsonDecode(resp.body);
      if (resp.body.contains("validation")) {
        var error = "Validation error\n";
        var list = body["error"]["validation"];
        for (var item in list) {
          error += "${item["field"]}: ${item["message"]}\n";
        }
        throw Exception(errorStr + error);
      }
    }
    throw Exception("$errorStr${resp.statusCode} ${resp.reasonPhrase}");
  }

  Future<String> registerInit(BuildContext context, String email) async {
    // For simplicity, we use the email as username and full name, but
    // feel free to add a separate full name field to the app
    var resp = await handler("/users/passkey/register/start", {
      "username": email,
      "fullName": email,
    });
    return resp["data"]["challenge"];
  }

  Future<bool> registerFinish(BuildContext context, String id, String rawId,
      String clientDataJSON, String attestationObject) async {
    var pubCred = {
      "type": "public-key",
      "id": id,
      "rawId": rawId,
      "authenticatorAttachment": "platform",
      "response": {
        "clientDataJSON": clientDataJSON,
        "attestationObject": attestationObject,
        "transports": ["internal"]
      },
      "clientExtensionResults": {}
    };
    var pub = jsonEncode(pubCred);
    pub = pub.replaceAll('"', '\"');
    debugPrint("pub: $pub");
    var body = {"signedChallenge": pub};
    var resp = await handler("/users/passkey/register/finish", body);
    return resp != null;
  }

  Future<String> signInInit(BuildContext context, String email) async {
    var resp = await handler("/users/passkey/login/start", {"username": email});
    return resp["data"]["challenge"];
  }

  Future<bool> signInFinish(
      BuildContext context,
      String id,
      String rawId,
      String clientDataJSON,
      String authenticatorData,
      String signature,
      String userHandle) async {
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
    var pub = jsonEncode(pubCred);
    pub = pub.replaceAll('"', '\"');
    debugPrint("pub: $pub");
    var body = {"signedChallenge": pub};
    var resp = await handler("/users/passkey/login/finish", body);
    return resp != null;
  }

  Future<bool> confirmEmail(String emailLinkID, String token) async {
    var resp = await handler("/v1/users/emaillinks/confirm",
        {"emailLinkID": emailLinkID, "token": token});
    return resp != null;
  }
}
