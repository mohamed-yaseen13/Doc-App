import 'package:doc_app/core/helpers/app_regex.dart';
import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/app_custom_button.dart';
import 'package:doc_app/core/widgets/app_custom_text_form_field.dart';
import 'package:doc_app/core/widgets/password_validations.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController passwordController;
  late TextEditingController emailController;
  late GlobalKey<FormState> formKey;

  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    emailController = context.read<LoginCubit>().emailController;
    formKey = context.read<LoginCubit>().formKey;

    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppCustomTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value.isNullOrEmpty() || !AppRegex.isEmailValid(value!)) {
                return 'Please enter a valid email';
              }
            },
            controller: emailController,
          ),
          verticalSpace(18),
          AppCustomTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value.isNullOrEmpty() ||
                  !AppRegex.hasLowerCase(value!) ||
                  !AppRegex.hasUpperCase(value) ||
                  !AppRegex.hasSpecialCharacter(value) ||
                  !AppRegex.hasNumber(value) ||
                  !AppRegex.hasMinLength(value)) {
                return 'Please enter a valid password';
              }
            },
            controller: passwordController,
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(18),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                Spacer(),
                Text(
                  'Forgot Password ?',
                  style: AppTextStyles.font12MainBlue400Weight,
                ),
              ],
            ),
          ),
          verticalSpace(64),
          AppCustomButton(
            textButton: 'Login',
            onPresssed: () {
              validateThenLogin(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
