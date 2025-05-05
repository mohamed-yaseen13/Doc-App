import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/routing/app_routes.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/app_custom_button.dart';
import 'package:doc_app/features/onboarding/widgets/big_logo_and_image.dart';
import 'package:doc_app/features/onboarding/widgets/small_logo_and_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const SmallLogoAndTitle(),
                verticalSpace(32),
                const BigLogoAndImage(),
                verticalSpace(32),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: AppTextStyles.font11Grey400Weight,
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace(32),
                      AppCustomButton(
                        textButton: 'Get Started',
                        onPresssed: () {
                          context.pushNamed(AppRoutes.signupScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
