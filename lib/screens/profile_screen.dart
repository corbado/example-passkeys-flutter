import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/providers/devpanel_provider.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/input/outlined_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';

class Item {
  final String title;
  final String subTitle;
  final Function(BuildContext, WidgetRef)? onTap;

  Item(this.title, this.subTitle, {this.onTap});
}

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(userProvider);
    final userService = ref.watch(userServiceProvider);
    final corbado = ref.watch(corbadoProvider);
    final username = useTextEditingController(text: authState.value!.username);
    final email = useTextEditingController(text: authState.value!.email);
    final isLoading = useState<bool>(false);
    final usernameHasChanged = useState<bool>(false);

    return BaseBody(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile settings',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Text(
              'Name',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 5),
            OutlinedTextField(
                controller: username,
                hintText: 'Full name',
                onChanged: (String newValue) {
                  debugPrint(username.text);
                  debugPrint(authState.value!.username);
                  usernameHasChanged.value =
                      username.text != authState.value!.username;
                }),
            const SizedBox(height: 10),
            Text(
              'Email',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 5),
            OutlinedTextField(
              controller: email,
              hintText: 'Email',
              readOnly: true,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: FilledTextButton(
                content: 'Save changes',
                isLoading: isLoading.value,
                disabled: !usernameHasChanged.value,
                onTap: () async {
                  isLoading.value = true;
                  await userService.updateUsername(username.text);
                  // await corbado.refresh();
                  isLoading.value = false;
                  usernameHasChanged.value = false;
                  if (!context.mounted) return;
                  showSimpleNotification(
                      Text(
                        'Your username has been successfully changed to ${username.text}.',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      leading: const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                      background: Theme.of(context).colorScheme.primary);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Danger zone'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledTextButton(
                content: 'Delete account',
                background: Theme.of(context).colorScheme.error,
                onTap: () async {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text('Account deletion'),
                            content: Text(
                                'After confirming this your account will be deleted. This action can not be reversed.'),
                            actions: [
                              FilledTextButton(
                                content: 'Cancel',
                                onTap: () => context.pop(),
                              ),
                              FilledTextButton(
                                content: 'Delete account',
                                background: Theme.of(context).colorScheme.error,
                                onTap: () async {
                                  try {
                                    context.pop();
                                    await userService.deleteUser();
                                    if (!context.mounted) return;

                                    const duration = Duration(seconds: 5);
                                    showSimpleNotification(
                                        Text(
                                          'Your account has been deleted. You will be logged out in a few seconds.',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary),
                                        ),
                                        leading: const Icon(
                                          Icons.check,
                                          color: Colors.green,
                                        ),
                                        background: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        duration: duration);

                                    await Future.delayed(duration);
                                    corbado.signOut();
                                  } catch (e) {
                                    showSimpleNotification(
                                        Text(
                                          'An unexpected error has happened. Please try again later.',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary),
                                        ),
                                        leading: const Icon(
                                          Icons.cancel,
                                          color: Colors.red,
                                        ),
                                        background: Theme.of(context)
                                            .colorScheme
                                            .primary);
                                  }
                                },
                              )
                            ],
                          ));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
