import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(userProvider);

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SvgPicture.asset(
                  'assets/logo/corbado.svg',
                  width: 20,
                ),
              ),
              Text(
                'Corbado',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          authState.value != null
              ? IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () {
                    context.go(Routes.menu);
                  },
                )
              : Container()
        ],
      ),
    );
  }
}
