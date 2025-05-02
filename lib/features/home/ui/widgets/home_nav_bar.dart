import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Mohamed!', style: AppTextStyles.font24Black700Weight),
            verticalSpace(5),
            Text(
              'How Are you Today?',
              style: AppTextStyles.font11Black400Weight,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xFFF5F5F5),
          child: SvgPicture.asset('assets/images/notification_icon.svg'),
        ),
      ],
    );
  }
}
