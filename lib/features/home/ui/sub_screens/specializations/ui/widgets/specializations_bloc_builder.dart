import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/logic/cubit/specializations_cubit.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/logic/cubit/specializations_state.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/ui/widgets/all_specializations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationsCubit, SpecializationsState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationsLoading ||
              current is SpecializationsSuccess ||
              current is SpecializationsFailure,
      builder: (context, state) {
        switch (state) {
          case SpecializationsLoading():
            return const Center(
              child: CircularProgressIndicator(color: AppColors.mainBlue),
            );

          case SpecializationsSuccess(:final data):
            var specializationsDataList = data.specializationsDataList;
            return AllSpecializations(
              specializationDataList: specializationsDataList,
            );

          case SpecializationsFailure(error: final error):
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
