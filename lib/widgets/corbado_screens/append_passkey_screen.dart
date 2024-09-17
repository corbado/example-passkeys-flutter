import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/button/outlined_text_button.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';

class PasskeyAppendScreen extends StatelessWidget implements CorbadoScreen<PasskeyAppendBlock> {
  final PasskeyAppendBlock block;

  const PasskeyAppendScreen(this.block);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          MaybeError(block.error?.translatedError),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: FilledTextButton(
              content: 'Activate',
              isLoading: block.data.primaryLoading,
              onTap: () {
                block.passkeyAppend();
              },
            ),
          ),
          const SizedBox(height: 10),
          block.data.canBeSkipped
              ? SizedBox(
                  width: double.infinity,
                  child: OutlinedTextButton(
                    content: 'Maybe later',
                    onTap: () {
                      block.skipPasskeyAppend();
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
