import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class EmailVerifyOtpScreen extends StatefulHookWidget implements CorbadoScreen<EmailVerifyBlock> {
  final EmailVerifyBlock block;

  EmailVerifyOtpScreen(this.block);

  @override
  createState() => _EmailVerifyOtpScreenState();
}

class _EmailVerifyOtpScreenState extends State<EmailVerifyOtpScreen> {
  final controller = OtpFieldController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => controller.setFocus(0));
  }

  @override
  Widget build(BuildContext context) {
    final code = useState('');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Text(
            'Enter code',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Text(
            'We just sent you a one time code to ${widget.block.data.email}. The code expires shortly, so please enter it soon.',
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
          MaybeError(widget.block.data.error?.translatedError),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: FilledTextButton(
              content: 'Continue',
              isLoading: widget.block.data.primaryLoading,
              onTap: () {
                controller.setFocus(0);
                widget.block.submitOtpCode(code.value);
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}