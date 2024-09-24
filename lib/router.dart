import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/screens/auth_screen.dart';
import 'package:developer_panel_app/screens/home_screen.dart';
import 'package:developer_panel_app/screens/loading_screen.dart';
import 'package:developer_panel_app/screens/menu_screen.dart';
import 'package:developer_panel_app/screens/passkeys_screen.dart';
import 'package:developer_panel_app/screens/post_sign_in_screen.dart';
import 'package:developer_panel_app/screens/profile_screen.dart';
import 'package:developer_panel_app/screens/switch_project_screen.dart';
import 'package:developer_panel_app/screens/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const auth = '/auth';
  static const home = '/home';
  static const passkeyList = '/passkey-list';
  static const users = '/users';
  static const profile = '/profile';
  static const menu = '/menu';
  static const switchProject = '/switch-project';
  static const postSignIn = '/post-sign-in';
  static const loading = '/loading';

  static String buildEmailOtp(String email) => '/email-otp/$email';
}

GoRoute _defaultTransitionGoRoute({
  required String path,
  required Widget Function(BuildContext, GoRouterState) builder,
}) {
  return GoRoute(
    path: path,
    pageBuilder: (context, state) =>
        _customPageBuilder(builder, context, state),
  );
}

Page<dynamic> _customPageBuilder(
  Widget Function(BuildContext, GoRouterState) builder,
  BuildContext context,
  GoRouterState state,
) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 150),
    child: builder(context, state),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeIn).animate(animation),
        child: child,
      );
    },
  );
}

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
      initialLocation: Routes.auth,
      routes: [
        _defaultTransitionGoRoute(
          path: Routes.auth,
          builder: (context, state) => const AuthScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.home,
          builder: (context, state) => const HomeScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.menu,
          builder: (context, state) => const MenuScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.passkeyList,
          builder: (context, state) => const PasskeysScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.users,
          builder: (context, state) => const UsersScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.switchProject,
          builder: (context, state) => const SwitchProjectScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.postSignIn,
          builder: (context, state) => const PostSignInScreen(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.loading,
          builder: (context, state) => const LoadingScreen(),
        ),
      ],
      redirect: (BuildContext context, GoRouterState state) {
        final onLoggedOutRoutes = [
          Routes.auth,
        ].contains(state.fullPath);

        if (authState.value == null) {
          return null;
        }

        switch (authState.value!) {
          case AuthState.None:
            if (!onLoggedOutRoutes) {
              return Routes.auth;
            }
            break;
          case AuthState.SignedIn:
            if (onLoggedOutRoutes) {
              return Routes.postSignIn;
            }
            break;
        }

        return null;
      });
});
