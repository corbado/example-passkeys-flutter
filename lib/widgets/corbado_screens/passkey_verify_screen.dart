import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/button/outlined_text_button.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../helper.dart';

class PasskeyVerifyScreen extends HookWidget implements CorbadoScreen<PasskeyVerifyBlock> {
  final PasskeyVerifyBlock block;

  PasskeyVerifyScreen(this.block);

  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final maybeError = block.error;
        if (maybeError != null) {
          showNotificationError(context, maybeError.translatedError);
        }
      });
    }, [block.error]);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaybeError(block.error?.translatedError),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Login with your passkey',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: FilledTextButton(
            isLoading: block.data.primaryLoading,
            onTap: () async {
              await block.passkeyVerify();
            },
            content: 'Login with passkey',
          ),
        ),
        const SizedBox(height: 10),
        block.data.preferredFallback != null
            ? SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedTextButton(
                  onTap: () => block.data.preferredFallback!.onTap(),
                  content: block.data.preferredFallback!.label,
                ),
              )
            : Container(),
        const SizedBox(height: 10),
      ],
    );
  }
}
