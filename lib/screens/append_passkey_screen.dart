import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/button/outlined_text_button.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppendPasskeyScreen extends HookConsumerWidget {
  const AppendPasskeyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    final errorMessage = useState<String?>(null);

    return BaseBody(
      showNavigation: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Text(
              'Log in even faster\nwith Passkeys',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Icon(
              Icons.fingerprint,
              color: Theme.of(context).colorScheme.onBackground,
              size: 41,
            ),
            MaybeError(errorMessage.value),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: FilledTextButton(
                content: 'Activate',
                onTap: () async {
                  (await authService.appendPasskey())
                      .either((passkeyCreated) {
                        if (passkeyCreated) {
                          authService.finishSignUp();
                        }
                  }, (error) {
                    errorMessage.value = error;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: OutlinedTextButton(
                content: 'Maybe later',
                onTap: () {
                  authService.finishSignUp();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
