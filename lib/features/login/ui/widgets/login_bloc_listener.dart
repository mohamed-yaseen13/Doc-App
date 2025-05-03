import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/routing/app_routes.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginSuccess ||
              current is LoginFailure,
      listener: (context, state) {
        switch (state) {
          case LoginLoading():
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(color: AppColors.mainBlue),
                  ),
            );
          case LoginSuccess(:final data):
            context.pop();
            context.pushReplacementNamed(AppRoutes.homeScreen);

          case LoginFailure(error: final error):
            setupErrorState(context, error);
        }
      },
      child: const SizedBox.shrink(),
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
