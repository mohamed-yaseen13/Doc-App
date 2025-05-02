import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityItem extends StatelessWidget {
  final String iconAsset;
  final String label;

  const SpecialityItem({
    super.key,
    required this.iconAsset,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.w,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconAsset),
          verticalSpace(8),
          Text(label, style: AppTextStyles.font14Grey500Weight),
        ],
      ),
    );
  }
}
