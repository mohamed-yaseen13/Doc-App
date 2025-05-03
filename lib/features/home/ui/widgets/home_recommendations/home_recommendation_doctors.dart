import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/data/models/home_response_model.dart';
import 'package:doc_app/features/home/ui/widgets/home_recommendations/home_recommendation_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeRecommendationDoctors extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const HomeRecommendationDoctors({
    super.key,
    required this.specializationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Recommendation Doctor',
                style: AppTextStyles.font18Black600Weight,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See All',
                  style: AppTextStyles.font12MainBlue400Weight,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  itemCount: specializationDataList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        HomeRecommendationDoctorItem(
                          imageAsset:
                              "assets/images/recommendation_doctor_randy.png",
                          doctorName: specializationDataList[index]?.name,
                          decs:
                              '${specializationDataList[index]?.doctorsList?.first?.name} | ${specializationDataList[index]?.doctorsList?.first?.city?.name}',
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
