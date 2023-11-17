import 'package:developer_panel_app/widgets/bottom_menu.dart';
import 'package:developer_panel_app/widgets/header.dart';
import 'package:flutter/material.dart';

class BaseBody extends StatelessWidget {
  final Widget child;
  final bool showNavigation;

  const BaseBody({super.key, required this.child, this.showNavigation = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(child: child),
            _drawNavigation()
          ],
        ),
      ),
    );
  }

  Widget _drawNavigation() {
    if (showNavigation) {
      return const BottomMenu();
    } else {
      return Container();
    }
  }
}
