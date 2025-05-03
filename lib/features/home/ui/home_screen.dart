import 'package:doc_app/features/home/ui/widgets/home_blue_stack.dart';
import 'package:doc_app/features/home/ui/widgets/home_nav_bar.dart';
import 'package:doc_app/features/home/ui/widgets/home_recommendations/recommendations_bloc_builder.dart';
import 'package:doc_app/features/home/ui/widgets/home_specializations/speciality_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeNavBar(),
                const HomeBlueStack(),
                const SpecialityBlocBuilder(),
                const RecommendationsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
