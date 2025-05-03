import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/widgets/app_custom_nav_bar.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/ui/widgets/doctors_bloc_builder.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/ui/widgets/filter_doctor.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/ui/widgets/search_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppCustomNavBar(title: 'Recommendation Doctor'),
                verticalSpace(12),
                Row(
                  children: [Expanded(child: SearchDoctor()), FilterDoctor()],
                ),
                DoctorsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
