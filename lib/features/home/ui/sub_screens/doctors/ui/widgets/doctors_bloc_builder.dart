import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/logic/cubit/doctors_cubit.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/logic/cubit/doctors_state.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/ui/widgets/all_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorsCubit, DoctorsState>(
      buildWhen:
          (previous, current) =>
              current is DoctorsLoading ||
              current is DoctorsSuccess ||
              current is DoctorsFailure,
      builder: (context, state) {
        switch (state) {
          case DoctorsLoading():
            return const Center(
              child: CircularProgressIndicator(color: AppColors.mainBlue),
            );

          case DoctorsSuccess(:final data):
            var doctorsList = data.doctorsList;
            return AllDoctors(doctorsList: doctorsList);

          case DoctorsFailure(error: final error):
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
