import 'dart:convert';
import 'dart:typed_data';

import 'package:corbado_demo/env.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:local_auth/local_auth.dart';
import 'package:webauthn/webauthn.dart';

class CorbadoService {
  final baseUrl = "https://api.corbado.com/v1";
  final origin = "";
  final _auth = Authenticator(true, false);
  final LocalAuthentication auth = LocalAuthentication();
  var cre = {
    "authenticatorExtensions": "", // optional and currently ignored
    "clientDataHash": "LTCT/hWLtJenIgi0oUhkJz7dE8ng+pej+i6YI1QQu60=", // base64
    "credTypesAndPubKeyAlgs": [
      ["public-key", -7]
    ],
    "excludeCredentials": [
      {
        "type": "public-key",
        "id": "lVGyXHwz6vdYignKyctbkIkJto/ADbYbHhE7+ss/87o=" // base64
        // "transports" member optional but ignored
      }
    ],
    "requireResidentKey": true,
    "requireUserPresence": false,
    "requireUserVerification": true,
    "rp": {"name": "webauthn.io", "id": "webauthn.io"},
    "user": {
      "name": "testuser",
      "displayName": "Test User",
      "id": "/QIAAAAAAAAAAA==" // base64
    }
  };

  register(BuildContext context, String email) async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool isDeviceSupported = await auth.isDeviceSupported();

    debugPrint(
        "canAuthenticateWithBiometrics : $canAuthenticateWithBiometrics");
    debugPrint("canAuthenticate : $isDeviceSupported");

    var options = await registerInit(email);
    _createCredential(context, email, options);
  }

  Future<String?> _createCredential(
      BuildContext context, email, String pkcco) async {
    try {
      debugPrint("create Credential started");
      final options = MakeCredentialOptions.fromJson(cre);
      options.userEntity = UserEntity(
        id: Uint8List.fromList(email.codeUnits),
        displayName: email,
        name: "Testname",
      );

      final attestation = await _auth.makeCredential(options);
      debugPrint("After attestation");

      debugPrint("BASE 64: ${attestation.getCredentialIdBase64()}");

      return attestation.getCredentialIdBase64();
    } on AuthenticatorException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Attestation error: ${e.message}'),
        ),
      );
      debugPrint("create credential returning null");
      return null;
    }
  }

  Future<String> registerInit(String email) async {
    var basicAuth =
        "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}";
    var value = await http.post(
        Uri.parse("https://api.corbado.com/v1/webauthn/register/start"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'authorization': basicAuth
        },
        body: jsonEncode({
          "username": email,
          "origin": "https://corbado.com",
          "clientInfo": {
            "userAgent": "Corbado Demo App",
            "remoteAddress": "127.0.0.1"
          }
        }));
    debugPrint("response");
    debugPrint("body: " + value.body);
    Map<String, dynamic> data = jsonDecode(value.body);
    debugPrint("cred: ${data["publicKeyCredentialCreationOptions"]}");

    return data["publicKeyCredentialCreationOptions"];
    //   Map<String, dynamic> data2 =
    //       jsonDecode(data["publicKeyCredentialCreationOptions"]);
    //   debugPrint("data2: $data2");
    //   debugPrint("publicKey: ${data2["publicKey"]["challenge"]}");
  }

  _registerFinish(Attestation attestation) async {
    String pkc = attestation.getCredentialIdBase64();

    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String attestationObject =
        stringToBase64.encode(String.fromCharCodes(attestation.asCBOR()));

    //  pkc = pkc.substring(0, pkc.length - 1);
    //  attestationObject =
    attestationObject.substring(0, attestationObject.length - 1);

    var param = {
      "type": "public-key",
      "id": pkc,
      "rawId": pkc,
      "authenticatorAttachment": "platform",
      "response": {
        "clientDataJSON":
            "eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiYWZmclQybWFGbmotWnlWUVd3M3ZYcFU0dG5IVmhaMHZEc0cyaHAxWTlBZyIsIm9yaWdpbiI6Imh0dHBzOi8vZGVtby5jb3JiYWRvLmNvbSIsImNyb3NzT3JpZ2luIjpmYWxzZX0",
        "attestationObject": attestationObject,
        "transports": ["internal"]
      },
      "clientExtensionResults": {}
    };

    debugPrint("registerFinish param: $param");

    var basicAuth =
        "Basic ${base64.encode(utf8.encode('$projectID:$apiSecret'))}";
    var value = await http.post(Uri.parse("$baseUrl/webauthn/register/finish"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'authorization': basicAuth
        },
        body: jsonEncode({
          "publicKeyCredential": jsonEncode(param),
          "origin": origin,
          "clientInfo": {
            "userAgent": "Corbado Demo App",
            "remoteAddress": "127.0.0.1"
          }
        }));
    debugPrint("_registerFinish response");
    debugPrint("_registerFinish body: " + value.body);
  }

  authenticateInit() {}

  authenticateFinish() {}
}
