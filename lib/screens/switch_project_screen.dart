import 'package:developer_panel_app/models/project_info.dart';
import 'package:developer_panel_app/providers/devpanel_provider.dart';
import 'package:developer_panel_app/providers/project_provider.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/card/project_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';

class SwitchProjectScreen extends HookConsumerWidget {
  const SwitchProjectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final project = ref.watch(projectProvider);
    final userProjects = ref.watch(userProjectsProvider);
    final selectedProject = useState<ProjectInfo>(project);

    return userProjects.when(
      error: (Object error, StackTrace stackTrace) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (userProjects) => BaseBody(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Switch project',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            userProjects.isNotEmpty
                ? Column(
                    children: [
                      SizedBox(
                        height: 300,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: userProjects
                                .map((e) => InkWell(
                                    onTap: () {
                                      selectedProject.value = e;
                                    },
                                    child: ProjectCard(
                                      projectInfo: e,
                                      selected: selectedProject.value == e,
                                    )))
                                .toList(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: FilledTextButton(
                          content: 'Switch',
                          disabled: selectedProject.value.id == project.id,
                          onTap: () async {
                            ref.read(projectProvider.notifier).state =
                                selectedProject.value;
                            showSimpleNotification(
                                Text(
                                  'Switched to ${selectedProject.value.id}.',
                                  style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                                ),
                                leading: const Icon(Icons.check, color: Colors.green,),
                                background: Theme.of(context).colorScheme.primary);
                          },
                        ),
                      ),
                    ],
                  )
                : Text(
                    "You don't have a Corbado project yet. Create one by going to corbado.com",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
          ],
        ),
      )),
    );
  }
}
