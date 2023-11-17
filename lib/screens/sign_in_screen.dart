import 'package:corbado_auth/corbado_auth.dart';
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

class SignInScreen extends StatefulHookConsumerWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SignInState();
}

class SignInState extends ConsumerState<SignInScreen> {
  SignInHandler? _signInHandler;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => prepareLogin());
  }

  Future<void> prepareLogin() async {
    final authService = ref.watch(authServiceProvider);
    final result = await authService.initAutoFillSignIn();
    result.either((signInHandler) {
      _signInHandler = signInHandler;
    }, (error) {
      debugPrint(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    final authService = ref.watch(authServiceProvider);
    final email = useTextEditingController();

    final errorMessage = useState<String?>(null);
    final isLoading = useState<bool>(false);
    final numberOfAutoCompletions = useState(0);

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
              LinkParagraph(
                preText: "Don't have an account yet? ",
                linkText: 'Create account',
                onTap: () => context.go(Routes.signUp),
              ),
              const SizedBox(height: 20),
              OutlinedTextField(
                controller: email,
                hintText: 'Email address',
                textInputType: TextInputType.emailAddress,
                onTap: () {
                  if (_signInHandler == null) {
                    return;
                  }

                  if (numberOfAutoCompletions.value >= 1) {
                    return;
                  }

                  numberOfAutoCompletions.value++;
                  _signInHandler!.complete((Exception e) {
                    if (e is InvalidPasskeyException) {
                      errorMessage.value = 'There was an error with your passkey';
                    }
                  });
                },
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
