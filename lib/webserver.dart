import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class Webserver {
  String fingerprint;
  late String _packageName;

  Webserver(this.fingerprint);

  void start() async {
    await verifyPermissions();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _packageName = packageInfo.packageName;
    debugPrint("Package name: $_packageName");

    var handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(_handle);

    var server = await shelf_io.serve(handler, 'localhost', 8080);

    // Enable content compression
    server.autoCompress = true;

    debugPrint('Serving at http://${server.address.host}:${server.port}');
  }

  verifyPermissions() async {
    debugPrint("Verifying permissions");
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }

  Response _handle(Request request) {
    var assetlinks = [
      {
        "relation": [
          "delegate_permission/common.handle_all_urls",
          "delegate_permission/common.get_login_creds"
        ],
        "target": {
          "namespace": "android_app",
          "package_name": _packageName,
          "sha256_cert_fingerprints": [fingerprint]
        }
      }
    ];

    return Response.ok(jsonEncode(assetlinks),
        headers: {'Content-Type': 'application/json'});
  }
}
