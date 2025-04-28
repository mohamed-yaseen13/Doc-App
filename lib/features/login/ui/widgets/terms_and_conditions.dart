import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our  ',
            style: AppTextStyles.font11Grey400Weight,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: AppTextStyles.font11Black500Weight,
          ),
          TextSpan(text: 'and ', style: AppTextStyles.font11Grey400Weight),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: AppTextStyles.font11Black500Weight,
          ),
        ],
      ),
    );
  }
}
