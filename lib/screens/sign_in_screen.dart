import 'dart:async';
import 'dart:io';

import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/router.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/input/outlined_text_field.dart';
import 'package:developer_panel_app/widgets/text/link.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    final email = useTextEditingController();

    final errorMessage = useState<String?>(null);
    final isLoading = useState<bool>(false);

    useEffect(() {
      isLoading.value = false;

      final t = Timer(const Duration(milliseconds: 100), () async {
        final authService = ref.watch(authServiceProvider);
        final maybeError = await authService.initAutoFillSignIn();
        if (maybeError != null) {
          errorMessage.value = maybeError;
        }
      });

      return () {
        if (t.isActive) t.cancel();
      };
    }, const []);

    return BaseBody(
      showNavigation: false,
      child: AutofillGroup(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text(
                'Welcome back!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Platform.isIOS
                  ? Container()
                  : LinkParagraph(
                      preText: "Don't have an account yet? ",
                      linkText: 'Create account',
                      onTap: () => context.go(Routes.signUp),
                    ),
              const SizedBox(height: 20),
              OutlinedTextField(
                controller: email,
                hintText: 'Email address',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              MaybeError(errorMessage.value),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FilledTextButton(
                  content: 'Sign in with one click',
                  isLoading: isLoading.value,
                  onTap: () async {
                    isLoading.value = true;
                    final emailString = email.value.text;
                    final result = await authService.signIn(emailString);
                    result.either((routeToNavigate) {
                      isLoading.value = false;
                      if (routeToNavigate != null) {
                        context.push(routeToNavigate);
                      }
                    }, (error) {
                      errorMessage.value = error;
                      isLoading.value = false;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
