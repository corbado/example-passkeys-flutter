import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/router.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class EmailOTPScreen extends StatefulHookConsumerWidget {
  final String email;

  const EmailOTPScreen({super.key, required this.email});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => EmailOTPScreenState();
}

class EmailOTPScreenState extends ConsumerState<EmailOTPScreen> {
  final controller = OtpFieldController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => controller.setFocus(0));
  }

  @override
  Widget build(BuildContext context) {
    final authService = ref.watch(authServiceProvider);
    final code = useState('');
    final errorMessage = useState<String?>(null);
    final isLoading = useState<bool>(false);

    return BaseBody(
        showNavigation: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Text(
                'Enter code',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Text(
                'We just sent you a one time code to ${widget.email}. The code expires shortly, so please enter it soon.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 30),
              OTPTextField(
                controller: controller,
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 45,
                style: Theme.of(context).textTheme.headlineMedium!,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                  borderColor: Theme.of(context).colorScheme.secondary,
                  enabledBorderColor: Theme.of(context).colorScheme.secondary,
                ),
                outlineBorderRadius: 20,
                contentPadding: const EdgeInsets.all(10),
                onChanged: (txt) {
                  code.value = txt;
                },
                onCompleted: (pin) {},
              ),
              const SizedBox(height: 10),
              MaybeError(errorMessage.value),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FilledTextButton(
                  content: 'Continue',
                  isLoading: isLoading.value,
                  onTap: () async {
                    controller.setFocus(0);
                    isLoading.value = true;
                    final maybeError =
                        await authService.signUpEmailComplete(code.value);
                    if (maybeError != null) {
                      isLoading.value = false;
                      errorMessage.value = maybeError;
                      return;
                    }
                  },
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Back',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
