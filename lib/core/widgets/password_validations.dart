import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        validationRow('At least 1 lowercase letter', hasLowerCase),
        SizedBox(height: 2.h),
        validationRow('At least 1 uppercase letter', hasUpperCase),
        SizedBox(height: 2.h),
        validationRow('At least 1 number', hasNumber),
        SizedBox(height: 2.h),
        validationRow('At least 1 special character', hasSpecialCharacter),
        SizedBox(height: 2.h),
        validationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget validationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: AppColors.grey),
        horizontalSpace(6),
        Text(
          text,
          style: AppTextStyles.font14Grey500Weight.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? AppColors.grey : Colors.red,
          ),
        ),
      ],
    );
  }
}
