import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/card/passkey_card.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

class PasskeysScreen extends StatefulHookConsumerWidget {
  const PasskeysScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PasskeysScreenState();
}

class _PasskeysScreenState extends ConsumerState<PasskeysScreen> {
  bool passkeyExistsOnDevice = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
        .addPostFrameCallback((_) => calcPasskeyExistsOnDevice());
  }

  Future<void> calcPasskeyExistsOnDevice() async {
    final passkeys = ref.watch(passkeysProvider).value ?? [];

    final ua = await userAgent();
    setState(() {
      passkeyExistsOnDevice = passkeys.any((e) => e.userAgent == ua);
    });
  }

  @override
  Widget build(BuildContext context) {
    final authService = ref.watch(authServiceProvider);
    final passkeys = ref.watch(passkeysProvider).value ?? [];
    final errorMessage = useState<String?>(null);

    return BaseBody(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Passkeys available',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Column(
              children: passkeys
                  .map((p) => SizedBox(
                      width: double.infinity,
                      child: PasskeyCard(
                          passkeyInfo: p,
                          onDelete: (String credentialID) async {
                            await authService.deletePasskey(credentialID);
                            calcPasskeyExistsOnDevice();
                            showSimpleNotification(
                                const Text(
                                  'Passkey has been deleted successfully.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                leading: const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                background:
                                    Theme.of(context).colorScheme.primary);
                          })))
                  .toList(),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: FilledTextButton(
                content: 'Add passkey',
                onTap: () async {
                  (await authService.appendPasskey()).either((passkeyCreated) {
                    if (!passkeyCreated) {
                      return;
                    }

                    if (!context.mounted) return;
                    calcPasskeyExistsOnDevice();
                    showSimpleNotification(
                        const Text(
                          'Passkey has been created successfully.',
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        background: Theme.of(context).colorScheme.primary);
                  }, (error) => errorMessage.value = error);
                },
                disabled: passkeyExistsOnDevice,
              ),
            ),
            MaybeError(errorMessage.value),
            const SizedBox(height: 10),
            Text(
              'Hint: you can only add one passkey per device',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    ));
  }
}
