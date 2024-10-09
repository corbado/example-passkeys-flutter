import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/button/outlined_text_button.dart';
import 'package:developer_panel_app/widgets/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasskeyAppendScreen extends HookWidget implements CorbadoScreen<PasskeyAppendBlock> {
  final PasskeyAppendBlock block;

  const PasskeyAppendScreen(this.block);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final maybeError = block.error;
        if (maybeError != null) {
          showNotificationError(context, maybeError.translatedError);
        }
      });

      return null;
    }, [block.error]);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Text(
            'Log in even faster with Passkeys',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fingerprint,
                color: Theme.of(context).colorScheme.onBackground,
                size: 75,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Quick and secure login using your Fingerprint or Face ID instead of passwords.',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 10),
          Text(
            'Biometric data will never leave your device.',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
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
          ..._drawFallback(context),
          const SizedBox(height: 20),
          const Spacer(),
          SizedBox(
              width: double.infinity,
              child: OutlinedTextButton(
                  content: 'Back',
                  onTap: () async {
                    await block.resetProcess();
                  })),
        ],
      ),
    );
  }

  List<Widget> _drawFallback(BuildContext context) {
    final fallback = block.data.preferredFallback;
    if (fallback == null) {
      return [Container()];
    }

    return [
      Text('or', textAlign: TextAlign.left, style: Theme.of(context).textTheme.bodyMedium),
      const SizedBox(height: 10),
      SizedBox(
          width: double.infinity,
          child: OutlinedTextButton(
            content: fallback.label,
            onTap: fallback.onTap,
          ))
    ];
  }
}
