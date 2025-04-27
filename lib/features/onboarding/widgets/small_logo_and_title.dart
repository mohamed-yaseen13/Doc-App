import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SmallLogoAndTitle extends StatelessWidget {
  const SmallLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/small_logo.svg'),
        horizontalSpace(10),
        Text('Docdoc', style: AppTextStyles.font24Black700Weight),
      ],
    );
  }
}
