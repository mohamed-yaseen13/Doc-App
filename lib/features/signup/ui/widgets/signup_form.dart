import 'package:doc_app/core/helpers/app_regex.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/widgets/app_custom_button.dart';
import 'package:doc_app/core/widgets/app_custom_text_form_field.dart';
import 'package:doc_app/core/widgets/password_validations.dart';
import 'package:doc_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:doc_app/features/signup/ui/widgets/already_have_account.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/core/helpers/extensions.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  Widget build(BuildContext context) {
    return Form(
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
          ),
          verticalSpace(12),
          AppCustomTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value.isNullOrEmpty() || !AppRegex.isEmailValid(value!)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(12),
          AppCustomTextFormField(
            hintText: 'phone',
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'Please enter a valid email';
              }
            },
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
              }
            },
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
              if (value.isNullOrEmpty()) {
                return 'Please confirm your password';
              }
            },
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
          AppCustomButton(textButton: 'Create Account', onPresssed: () {}),
          verticalSpace(12),
          TermsAndConditions(),
          verticalSpace(12),
          AlreadyHaveAccount(),
        ],
      ),
    );
  }
}
