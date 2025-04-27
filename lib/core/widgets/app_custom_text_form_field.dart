import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObscureText;
  const AppCustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.isObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: AppCustomBorder(AppColors.mainBlue),
        enabledBorder: AppCustomBorder(AppColors.lightGrey),
        errorBorder: AppCustomBorder(Colors.red),
        focusedErrorBorder: AppCustomBorder(Colors.red),
        hintStyle: AppTextStyles.font14Grey500Weight,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: AppTextStyles.font14Grey500Weight,
    );
  }

  InputBorder AppCustomBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
