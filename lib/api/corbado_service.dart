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

  Future<bool> confirmEmail(String emailLinkID, String token) async {
    var resp = await handler("/users/emaillinks/confirm",
        {"emailLinkID": emailLinkID, "token": token});
    return resp != null;
  }
}
