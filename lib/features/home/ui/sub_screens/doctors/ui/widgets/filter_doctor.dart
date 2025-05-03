import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterDoctor extends StatelessWidget {
  const FilterDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset('assets/images/filter_icon.svg'),
    );
  }
}
