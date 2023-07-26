import 'dart:io';

import 'package:corbado_frontend_api_client/frontendapi/lib/api.dart';
import 'package:flutter/material.dart';
import 'package:passkeys/authenticator/passkey_authenticator.dart';

///Issues api calls to the corbado backend
class CorbadoService {
  final String _projectID;
  static String origin = "";
  final ApiClient _client;
  late final PasskeyAuthenticator _authenticator;

  CorbadoService(this._projectID)
      : _client =
            ApiClient(basePath: 'https://$_projectID.frontendapi.corbado.io') {
    _authenticator = PasskeyAuthenticator();
    if (Platform.isAndroid) {
      _authenticator.getFacetID().then(
            (value) => {
              debugPrint('setting Origin of API requests to $value'),
              _client.addDefaultHeader('Origin', value),
            },
          );
    } else if (Platform.isIOS) {
      _client.addDefaultHeader(
        'Origin',
        'https://$_projectID.frontendapi.corbado.io',
      );
    }
  }

  Future<EmailLinkConfirmRsp?> emailLinkConfirm(
          String emailLinkID, String token) async =>
      UsersApi(_client).emailLinkConfirm(
          EmailLinkConfirmReq(emailLinkID: emailLinkID, token: token));
}
