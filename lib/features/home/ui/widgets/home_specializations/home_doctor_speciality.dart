import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/routing/app_routes.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/data/models/home_response_model.dart';
import 'package:doc_app/features/home/ui/widgets/home_specializations/speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDoctorSpeciality extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const HomeDoctorSpeciality({super.key, required this.specializationDataList});

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
                'Doctor Speciality',
                style: AppTextStyles.font18Black600Weight,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.specializations);
                },
                child: Text(
                  'See All',
                  style: AppTextStyles.font12MainBlue400Weight,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 170.h,
            child: ListView.builder(
              itemCount: specializationDataList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: specializationDataList[index]?.name,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
