import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/routing/app_routes.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  final String textButton;
  const AppCustomButton({super.key, required this.textButton});

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
      onPressed: () {
        context.pushNamed(AppRoutes.loginScreen);
      },
      child: Text(textButton, style: AppTextStyles.font16White600Weight),
    );
  }
}
