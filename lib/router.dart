import 'package:corbado_auth/corbado_auth.dart';
import 'package:corbado_auth_example/auth_provider.dart';
import 'package:corbado_auth_example/pages/auth_page.dart';
import 'package:corbado_auth_example/pages/edit_profile_page.dart';
import 'package:corbado_auth_example/pages/passkey_list_page.dart';
import 'package:corbado_auth_example/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const auth = '/auth';
  static const profile = '/profile';
  static const editProfile = '/edit-profile';
  static const passkeyList = '/passkey-list';
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
          builder: (context, state) => AuthPage(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.profile,
          builder: (context, state) => ProfilePage(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.editProfile,
          builder: (context, state) => EditProfilePage(),
        ),
        _defaultTransitionGoRoute(
          path: Routes.passkeyList,
          builder: (context, state) => PasskeyListPage(),
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
            // if the user is not logged in but currently on a page that should
            // only be visible for logged in users => redirect to signIn page.
            if (!onLoggedOutRoutes) {
              return Routes.auth;
            }
          case AuthState.SignedIn:
            // if the user is logged in but currently on a page that should
            // only be visible for logged out users => redirect to profile page.
            if (onLoggedOutRoutes) {
              return Routes.profile;
            }
        }

        return null;
      });
});
