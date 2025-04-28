import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onPresssed;
  const AppCustomButton({
    super.key,
    required this.textButton,
    required this.onPresssed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      onPressed: onPresssed,
      child: Text(textButton, style: AppTextStyles.font16White600Weight),
    );
  }
}
