import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchDoctor extends StatelessWidget {
  const SearchDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        focusedBorder: AppCustomBorder(AppColors.mainBlue),
        enabledBorder: AppCustomBorder(Color(0xFFF5F5F5)),
        hintStyle: AppTextStyles.font14Grey500Weight,
        hintText: 'Search',
        prefixIcon: Image.asset('assets/images/search_icon.png'),
        filled: true,
        fillColor: Color(0xFFF5F5F5),
      ),
    );
  }

  InputBorder AppCustomBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
