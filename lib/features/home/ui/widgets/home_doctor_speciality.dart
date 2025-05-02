import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/ui/widgets/speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDoctorSpeciality extends StatelessWidget {
  const HomeDoctorSpeciality({super.key});

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
                onTap: () {},
                child: Text(
                  'See All',
                  style: AppTextStyles.font12MainBlue400Weight,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SpecialityItem(
                  iconAsset: 'assets/images/speciality_general.png',
                  label: 'General',
                ),
                SpecialityItem(
                  iconAsset: 'assets/images/speciality_neurologic.png',
                  label: 'Neurologic',
                ),
                SpecialityItem(
                  iconAsset: 'assets/images/speciality_pediatric.png',
                  label: 'Pediatric',
                ),
                SpecialityItem(
                  iconAsset: 'assets/images/speciality_radiology.png',
                  label: 'Radiology',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
