import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/routing/app_routes.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet? ",
            style: AppTextStyles.font11Black400Weight,
          ),
          TextSpan(
            text: 'Login',
            style: AppTextStyles.font11MainBlue600Weight,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushNamed(AppRoutes.loginScreen);
                  },
          ),
        ],
      ),
    );
  }
}
