import 'package:developer_panel_app/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const iconSize = 40.0;

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Theme.of(context).colorScheme.onBackground,
      unselectedFontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: iconSize,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list, size: iconSize,),
          label: 'Users',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.key, size: iconSize,),
          label: 'Passkeys',
        ),
      ],
      currentIndex: _calculateSelectedIndex(context),
      onTap: (int value) => _onTap(context, value),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String? location = route.routeInformationProvider.value.location;
    if (location == null) {
      return 0;
    }

    if (location.startsWith(Routes.home)) {
      return 0;
    }
    if (location.startsWith(Routes.users)) {
      return 1;
    }
    if (location.startsWith(Routes.passkeyList)) {
      return 2;
    }

    return 0;
  }

  void _onTap(BuildContext context, int value) {
    switch (value) {
      case 0:
        return context.go(Routes.home);
      case 1:
        return context.go(Routes.users);
      case 2:
        return context.go(Routes.passkeyList);
      default:
        return context.go(Routes.home);
    }
  }
}
