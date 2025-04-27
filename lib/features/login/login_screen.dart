import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/login/widgets/dont_have_account.dart';
import 'package:doc_app/features/login/widgets/login_form.dart';
import 'package:doc_app/features/login/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: AppTextStyles.font24MainBlue700Weight,
              ),
              verticalSpace(10),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: AppTextStyles.font14Grey400Weight,
              ),
              verticalSpace(64),
              Column(
                children: [
                  LoginForm(),
                  verticalSpace(128),
                  TermsAndConditions(),
                  verticalSpace(24),
                  DontHaveAccount(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
