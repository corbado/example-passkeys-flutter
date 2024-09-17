import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/widgets/button/filled_text_button.dart';
import 'package:developer_panel_app/widgets/input/outlined_text_field.dart';
import 'package:developer_panel_app/widgets/text/link.dart';
import 'package:developer_panel_app/widgets/text/maybe_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupInitScreen extends HookWidget implements CorbadoScreen<SignupInitBlock> {
  final SignupInitBlock block;

  SignupInitScreen(this.block);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();

    return Padding(
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
            onTap: () => block.navigateToLogin(),
          ),
          const SizedBox(height: 20),
          OutlinedTextField(controller: nameController, hintText: 'Name'),
          const SizedBox(height: 5),
          OutlinedTextField(
            controller: emailController,
            hintText: 'Email address',
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 5),
          MaybeError(block.data.error?.translatedError),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: FilledTextButton(
              content: 'Sign up',
              isLoading: block.data.primaryLoading,
              onTap: () {
                block.submitSignupInit(email: emailController.value.text, fullName: nameController.value.text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
