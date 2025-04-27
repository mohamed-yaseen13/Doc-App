import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/app_custom_button.dart';
import 'package:doc_app/core/widgets/app_custom_text_form_field.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppCustomTextFormField(hintText: 'Email'),
          verticalSpace(18),
          AppCustomTextFormField(hintText: 'Password'),
          verticalSpace(18),
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
          AppCustomButton(textButton: 'Login'),
        ],
      ),
    );
  }
}
