import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeRecommendationDoctorItem extends StatelessWidget {
  final String imageAsset;
  final String? doctorName;
  final String? decs;

  const HomeRecommendationDoctorItem({
    super.key,
    required this.imageAsset,
    required this.doctorName,
    required this.decs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(imageAsset),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName ?? '',
                  style: AppTextStyles.font18Black600Weight,
                ),
                verticalSpace(8),
                Text(
                  decs ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font14Grey400Weight,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
