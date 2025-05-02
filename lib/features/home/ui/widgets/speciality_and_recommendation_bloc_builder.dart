import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_app/features/home/ui/widgets/home_doctor_speciality.dart';
import 'package:doc_app/features/home/ui/widgets/home_recommendation_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityAndRecommendationBlocBuilder extends StatelessWidget {
  const SpecialityAndRecommendationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is HomeLoading ||
              current is HomeSuccess ||
              current is HomeFailure,
      builder: (context, state) {
        switch (state) {
          case HomeLoading():
            return const Center(
              child: CircularProgressIndicator(color: AppColors.mainBlue),
            );
          case HomeSuccess(:final data):
            var specializationsDataList = data.specializationsDataList;
            return Column(
              children: [
                HomeDoctorSpeciality(
                  specializationDataList: specializationsDataList,
                ),
                HomeRecommendationDoctors(
                  specializationDataList: specializationsDataList,
                ),
              ],
            );
          case HomeFailure(error: final error):
            setupErrorState(context, error);
            return const Center(child: Text('An error occurred'));
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(error, style: AppTextStyles.font14Grey500Weight),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it', style: AppTextStyles.font14Grey500Weight),
              ),
            ],
          ),
    );
  }
}
