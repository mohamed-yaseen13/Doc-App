import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeRecommendationDoctorItem extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String describtion;
  const HomeRecommendationDoctorItem({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.describtion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(imageAsset),
          horizontalSpace(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTextStyles.font18Black600Weight),
              verticalSpace(8),
              Text(describtion, style: AppTextStyles.font14Grey400Weight),
            ],
          ),
        ],
      ),
    );
  }
}
