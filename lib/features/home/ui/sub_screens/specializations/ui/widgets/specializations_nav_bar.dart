import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecializationsNavBar extends StatelessWidget {
  const SpecializationsNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
