import 'package:corbado_demo/activities/login_activity.dart';
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp.router(routerConfig: router));
}

/// This handles '/' and '/details'.
final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (_, __) => MyApp()),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: MaterialApp(
            title: 'Corbado Demo', theme: theme, home: LoginActivity()));
  }
}
