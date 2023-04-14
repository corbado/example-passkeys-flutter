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
    var body = {
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
    var resp = await handler("/users/passkey/login/finish", body);
    return resp != null;
  }

  Future<String> registerInit(BuildContext context, String email) async {
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
    debugPrint("pub: $pub");
    pub = pub.replaceAll('"', '\"');
    debugPrint("pub: $pub");
    var body = {"signedChallenge": pub};
    var resp = await handler("/users/passkey/register/finish", body);
    return resp != null;
  }

/*
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
   */

/*
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
   */

/*
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
   */

/*
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

 */
}
