import 'package:doc_app/core/helpers/app_regex.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/widgets/app_custom_button.dart';
import 'package:doc_app/core/widgets/app_custom_text_form_field.dart';
import 'package:doc_app/core/widgets/password_validations.dart';
import 'package:doc_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:doc_app/features/signup/data/models/signup_request_body.dart';
import 'package:doc_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:doc_app/features/signup/ui/widgets/already_have_account.dart';
import 'package:doc_app/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/core/helpers/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmationController;
  late GlobalKey<FormState> formKey;

  late String password;

  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    nameController = context.read<SignupCubit>().nameController;
    emailController = context.read<SignupCubit>().emailController;
    phoneController = context.read<SignupCubit>().phoneController;
    passwordController = context.read<SignupCubit>().passwordController;
    passwordConfirmationController =
        context.read<SignupCubit>().passwordConfirmationController;
    formKey = context.read<SignupCubit>().formKey;

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
            hintText: 'name',
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'Please enter a valid email';
              }
            },
            controller: nameController,
          ),
          verticalSpace(12),
          AppCustomTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value.isNullOrEmpty() || !AppRegex.isEmailValid(value!)) {
                return 'Please enter a valid email';
              }
            },
            controller: emailController,
          ),
          verticalSpace(12),
          AppCustomTextFormField(
            hintText: 'phone',
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'Please enter a valid email';
              }
            },
            controller: phoneController,
          ),
          verticalSpace(12),
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
              } else {
                password = value;
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
          verticalSpace(12),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
          verticalSpace(12),
          AppCustomTextFormField(
            hintText: 'password confirmation',
            validator: (value) {
              if (value != password) {
                return 'Please confirm your password';
              }
            },
            controller: passwordConfirmationController,
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
          verticalSpace(12),
          AppCustomButton(
            textButton: 'Create Account',
            onPresssed: () {
              validateThenLogin(context);
            },
          ),
          verticalSpace(12),
          TermsAndConditions(),
          verticalSpace(12),
          AlreadyHaveAccount(),
          const SignupBlocListener(),
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates(
        SignupRequestBody(
          name: context.read<SignupCubit>().nameController.text,
          email: context.read<SignupCubit>().emailController.text,
          phone: int.parse(context.read<SignupCubit>().phoneController.text),
          gender: 0,
          password: context.read<SignupCubit>().passwordController.text,
          passwordConfirmation:
              context.read<SignupCubit>().passwordConfirmationController.text,
        ),
      );
    }
  }
}
