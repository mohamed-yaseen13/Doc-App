import 'package:doc_app/features/home/ui/sub_screens/doctors/ui/widgets/filter_doctor_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterDoctor extends StatelessWidget {
  final Set<String> selectedSpecialities;
  final Function(Set<String> selectedSpecialties) onFilter;
  const FilterDoctor({
    super.key,
    required this.onFilter,
    required this.selectedSpecialities,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          context: context,
          builder: (context) {
            return FilterDoctorBottomSheet(
              onFilter: onFilter,
              initialSelected: selectedSpecialities,
            );
          },
        );
      },
      icon: SvgPicture.asset('assets/images/filter_icon.svg'),
    );
  }
}
