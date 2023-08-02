import 'package:corbado_demo/activities/login_activity.dart';
import 'package:corbado_demo/routes.dart';
import 'package:corbado_demo/services/app_locator.dart';
import 'package:corbado_demo/services/corbado_service.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailLinkConfirmActivity extends StatefulWidget {
  final String emailLinkID;
  final String token;

  EmailLinkConfirmActivity({
    super.key,
    required this.emailLinkID,
    required this.token,
  }) {
    debugPrint(
        "EmailLinkConfirmActivity emailLinkID: $emailLinkID, token: $token");
  }

  @override
  _EmailLinkConfirmActivityState createState() =>
      _EmailLinkConfirmActivityState();
}

class _EmailLinkConfirmActivityState extends State<EmailLinkConfirmActivity> {
  late Future<void> _confirmationFuture;
  final CorbadoService corbadoSvc = getIt<CorbadoService>();

  @override
  void initState() {
    super.initState();
    _confirmationFuture = handleEmailLinkConfirm(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _confirmationFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            // Show error message and back button
            return Scaffold(
              backgroundColor: corbadoDark,
              appBar: AppBar(
                backgroundColor: corbadoDark,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white70),
                  onPressed: () {
                    final goRouter = GoRouter.of(context);
                    goRouter.go('/');
                  },
                ),
              ),
              body: Center(
                child: Text(
                  'Couldn\'t confirm the email: ${snapshot.error}',
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          } else {
            // Redirect to LoginActivity
            return LoginActivity();
          }
        } else {
          // Show progress bar
          return Scaffold(
            backgroundColor: corbadoDark,
            body: const Center(
              child: CircularProgressIndicator(
                color: Colors.white70,
              ),
            ),
          );
        }
      },
    );
  }

  Future<void> handleEmailLinkConfirm(BuildContext context) async {
    debugPrint("handleEmailLinkConfirm");
    var emailConfirmed =
        await corbadoSvc.emailLinkConfirm(widget.emailLinkID, widget.token);
    debugPrint("emailConfirmed: $emailConfirmed");

    debugPrint("emailConfirmed.httpStatusCode: ${emailConfirmed?.toJson()}");
    if (emailConfirmed == null) {
      throw Exception('Couldn\'t confirm the email');
    }
    if (emailConfirmed.httpStatusCode == 200) {
      final goRouter = GoRouter.of(context);
      goRouter.go(loginRoute);
    }
  }
}
