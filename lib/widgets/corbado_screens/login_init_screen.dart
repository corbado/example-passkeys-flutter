import 'dart:io';

import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/helper.dart';
import 'package:developer_panel_app/widgets/input/outlined_text_field.dart';
import 'package:developer_panel_app/widgets/text/link.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginInitScreen extends HookWidget implements CorbadoScreen<LoginInitBlock> {
  final LoginInitBlock block;

  LoginInitScreen(this.block);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController(text: block.data.loginIdentifier);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final maybeError = block.error;
        if (maybeError != null) {
          showNotificationError(context, maybeError.translatedError);
        }
      });
    }, [block.error]);

    return AutofillGroup(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              'Welcome back',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Platform.isIOS
                ? Container()
                : LinkParagraph(
                    preText: "Don't have an account yet? ",
                    linkText: 'Create account',
                    onTap: () => block.navigateToSignup(),
                  ),
            const SizedBox(height: 20),
            OutlinedTextField(
              controller: emailController,
              hintText: 'Email address',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            MaybeError(block.data.loginIdentifierError?.translatedError),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: FilledTextButton(
                content: 'Sign in with one click',
                isLoading: block.data.primaryLoading,
                onTap: () {
                  final emailString = emailController.value.text;
                  block.submitLogin(loginIdentifier: emailString);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
