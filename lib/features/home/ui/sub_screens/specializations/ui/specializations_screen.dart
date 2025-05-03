import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/ui/widgets/home_specializations/speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecializationsScreen extends StatelessWidget {
  const SpecializationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Doctor Speciality",
                          style: AppTextStyles.font18Black600Weight,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: SvgPicture.asset(
                            'assets/images/back_button.svg',
                            height: 40.h, // Adjust size as needed
                            width: 40.w,
                          ),
                          onPressed: () => context.pop(),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(32),
                Row(
                  children: [
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                  ],
                ),
                verticalSpace(16),
                Row(
                  children: [
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                  ],
                ),
                verticalSpace(16),
                Row(
                  children: [
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                    SpecialityItem(
                      iconAsset: 'assets/images/speciality_general.png',
                      specializationName: 'General',
                    ),
                  ],
                ),
                verticalSpace(16),
                SpecialityItem(
                  iconAsset: 'assets/images/speciality_general.png',
                  specializationName: 'General',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
