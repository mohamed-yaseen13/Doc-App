import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account yet? ",
            style: AppTextStyles.font11Black400Weight,
          ),
          TextSpan(
            text: 'Sign Up',
            style: AppTextStyles.font11MainBlue600Weight,
          ),
        ],
      ),
    );
  }
}
