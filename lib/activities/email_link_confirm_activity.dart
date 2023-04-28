import 'package:flutter/material.dart';
import 'package:corbado_demo/api/corbado_service.dart';
import 'package:corbado_demo/activities/login_activity.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:corbado_demo/routes.dart';
import 'package:go_router/go_router.dart';

class EmailLinkConfirmActivity extends StatefulWidget {
  final String emailLinkID;
  final String token;
  final String projectID;
  late final CorbadoService corbadoSvc;

  EmailLinkConfirmActivity({
    super.key,
    required this.emailLinkID,
    required this.token,
  }) : projectID =
            const String.fromEnvironment("PROJECT_ID", defaultValue: "") {
    if (!projectID.startsWith("pro-")) {
      throw Exception("ProjectID not configured");
    }
    corbadoSvc =
        CorbadoService("https://$projectID.auth.corbado.com/v1", projectID);
  }

  @override
  _EmailLinkConfirmActivityState createState() =>
      _EmailLinkConfirmActivityState();
}

class _EmailLinkConfirmActivityState extends State<EmailLinkConfirmActivity> {
  late Future<void> _confirmationFuture;

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
                  icon: Icon(Icons.arrow_back, color: Colors.white70),
                  onPressed: () {
                    final goRouter = GoRouter.of(context);
                    goRouter.go('/');
                  },
                ),
              ),
              body: Center(
                child: Text(
                  'Couldn\'t confirm the email: ${snapshot.error}',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
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
            body: Center(
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
    bool emailConfirmed =
        await widget.corbadoSvc.confirmEmail(widget.emailLinkID, widget.token);
    if (!emailConfirmed) {
      throw Exception('Couldn\'t confirm the email');
    }
    if (emailConfirmed) {
      final goRouter = GoRouter.of(context);
      goRouter.go(loginRoute);
    }
  }
}
