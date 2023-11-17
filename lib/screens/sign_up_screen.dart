import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/router.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/input/outlined_text_field.dart';
import 'package:developer_panel_app/widgets/text/link.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
    final name = useTextEditingController();
    final email = useTextEditingController();
    final errorMessage = useState<String?>(null);
    final isLoading = useState<bool>(false);

    return BaseBody(
      showNavigation: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              'Create your account',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            LinkParagraph(
              preText: 'You already have an account? ',
              linkText: 'Log in',
              onTap: () => context.go(Routes.signIn),
            ),
            const SizedBox(height: 20),
            OutlinedTextField(controller: name, hintText: 'Name'),
            const SizedBox(height: 5),
            OutlinedTextField(
              controller: email,
              hintText: 'Email address',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 5),
            MaybeError(errorMessage.value),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: FilledTextButton(
                content: 'Sign up',
                isLoading: isLoading.value,
                onTap: () async {
                  isLoading.value = true;
                  final maybeError = await authService.signUpEmailInit(
                    email.value.text,
                    name.value.text,
                  );
                  isLoading.value = false;

                  if (maybeError != null) {
                    errorMessage.value = maybeError;
                    return;
                  }

                  if (!context.mounted) return;
                  context.push(Routes.buildEmailOtp(email.value.text));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
