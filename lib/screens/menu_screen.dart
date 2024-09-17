import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/providers/package_info_provider.dart';
import 'package:developer_panel_app/providers/project_provider.dart';
import 'package:developer_panel_app/router.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Item {
  final String title;
  final String subTitle;
  final Function(BuildContext, WidgetRef)? onTap;

  Item(this.title, this.subTitle, {this.onTap});
}

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entries = _createItems(ref);
    return BaseBody(
        child: SizedBox(
      height: 300,
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: entries.map((e) {
          return ListTile(
            title: Text(
              e.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            onTap: () {
              if (e.onTap == null) {
                return;
              }

              e.onTap!(context, ref);
            },
            subtitle: Text(
              e.subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          );
        }).toList(),
      ),
    ));
  }

  List<Item> _createItems(WidgetRef ref) {
    final signOut = Item(
      'Sign out',
      'Goodbye.',
      onTap: (BuildContext context, WidgetRef ref) {
        final corbado = ref.read(corbadoProvider);
        corbado.signOut();
      },
    );

    final profile = Item(
      'Profile',
      'Make changes to your account.',
      onTap: (BuildContext context, WidgetRef ref) {
        context.push(Routes.profile);
      },
    );

    final project = ref.watch(projectProvider);
    final switchProject = Item(
      'Switch project',
      'Current: ${project.id}',
      onTap: (BuildContext context, WidgetRef ref) {
        context.push(Routes.switchProject);
      },
    );

    final packageInfo = ref.watch(packageInfoProvider);
    final versionInfo = Item('Version', packageInfo.version);

    return [switchProject, profile, versionInfo, signOut];
  }
}
