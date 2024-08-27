import 'package:developer_panel_app/models/project_info.dart';
import 'package:developer_panel_app/providers/devpanel_provider.dart';
import 'package:developer_panel_app/providers/project_provider.dart';
import 'package:developer_panel_app/router.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PostSignInScreen extends ConsumerWidget {
  const PostSignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _postSignIn(ref).then((value) => context.go(Routes.home));

    return const BaseBody(
        showNavigation: false,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }

  Future<void> _postSignIn(WidgetRef ref) async {
    final userService = ref.watch(userServiceProvider);
    final projects = await userService.getProjects();

    ProjectInfo? selected;
    // create a new default project if the user does not have one yet
    if (projects.isEmpty) {
      (await userService.addProject('Default project'))
          .either((left) => selected = left, (right) => null);
    } else {
      selected = projects.first;
    }

    if (selected != null) {
      ref.read(projectProvider.notifier).state = selected!;
    }
  }
}
