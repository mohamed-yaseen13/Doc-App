import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/widgets/app_custom_nav_bar.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/ui/widgets/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                const AppCustomNavBar(title: 'Doctor Speciality'),
                verticalSpace(32),
                const SpecializationsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
