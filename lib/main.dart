import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/providers/package_info_provider.dart';
import 'package:developer_panel_app/router.dart';
import 'package:developer_panel_app/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() async {
  runApp(const LoadingScreen());

  final corbadoAuth = CorbadoAuth();
  await corbadoAuth.init("pro-1");

  final packageInfo = await PackageInfo.fromPlatform();

  runApp(ProviderScope(
    overrides: [
      corbadoProvider.overrideWithValue(corbadoAuth),
      packageInfoProvider.overrideWithValue(packageInfo)
    ],
    child: const MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return OverlaySupport.global(
        child: MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Space Grotesk',
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          headlineSmall: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF1953ff),
          onPrimary: Colors.white,
          secondary: Color(0xff59ACFF),
          onSecondary: Colors.black,
          error: Colors.redAccent,
          onError: Colors.white,
          background: Color(0xff090F1F),
          onBackground: Colors.white,
          surface: Color(0xFF2C334A),
          onSurface: Color(0xFF1953ff),
        ),
        useMaterial3: true,
      ),
    ));
  }
}
