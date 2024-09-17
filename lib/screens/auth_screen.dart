import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/corbado_screens/append_passkey_screen.dart';
import 'package:developer_panel_app/widgets/corbado_screens/email_verify_otp_sceen.dart';
import 'package:developer_panel_app/widgets/corbado_screens/login_init_screen.dart';
import 'package:developer_panel_app/widgets/corbado_screens/passkey_verify_screen.dart';
import 'package:developer_panel_app/widgets/corbado_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final corbadoAuth = ref.watch(corbadoProvider);

    return BaseBody(
      showNavigation: false,
      child: CorbadoAuthComponent(
        corbadoAuth: corbadoAuth,
        components: CorbadoScreens(
          signupInit: (SignupInitBlock block) => SignupInitScreen(block),
          loginInit: (LoginInitBlock block) => LoginInitScreen(block),
          emailVerifyOtp: (EmailVerifyBlock block) => EmailVerifyOtpScreen(block),
          passkeyAppend: (PasskeyAppendBlock block) => PasskeyAppendScreen(block),
          passkeyVerify: (PasskeyVerifyBlock block) => PasskeyVerifyScreen(block),
        ),
      ),
    );
  }
}
