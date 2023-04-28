import 'package:corbado_demo/activities/login_activity.dart';
import 'package:corbado_demo/activities/email_link_confirm_activity.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';
import 'package:corbado_demo/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp.router(routerConfig: router));
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: MyApp(homeWidget: LoginActivity()));
      },
    ),
    GoRoute(
      path: loginRoute,
      pageBuilder: (context, state) {
        return MaterialPage(
            child: MyApp(
                homeWidget: LoginActivity(
          emailLinkRedirect: true,
        )));
      },
    ),
    GoRoute(
      path: emailLinkConfirmRoute,
      pageBuilder: (context, state) {
        final queryParams = state.queryParams;
        final emailLinkID = queryParams['corbadoEmailLinkID'];
        final token = queryParams['corbadoToken'];
        if (emailLinkID == null || token == null) {
          throw Exception("Missing emailLinkID or token");
        }
        return MaterialPage(
          child: EmailLinkConfirmActivity(
            emailLinkID: emailLinkID,
            token: token,
          ),
        );
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  final Widget homeWidget;

  const MyApp({Key? key, required this.homeWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OKToast(
        child:
            MaterialApp(title: 'Corbado Demo', theme: theme, home: homeWidget));
  }
}
