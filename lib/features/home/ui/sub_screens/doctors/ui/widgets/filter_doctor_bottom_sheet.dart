import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/app_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterDoctorBottomSheet extends StatefulWidget {
  final Set<String> initialSelected;
  final Function(Set<String> selectedSpecialties) onFilter;
  const FilterDoctorBottomSheet({
    super.key,
    required this.onFilter,
    required this.initialSelected,
  });

  @override
  State<FilterDoctorBottomSheet> createState() =>
      _FilterDoctorBottomSheetState();
}

class _FilterDoctorBottomSheetState extends State<FilterDoctorBottomSheet> {
  final List<String> allSpecialities = [
    'All',
    "Cardiology",
    'Dermatology',
    'Neurology',
    'Orthopedics',
    'Pediatrics',
    'Gynecology',
    'Ophthalmology',
    'Urology',
    'Gastroenterology',
    'Psychiatry',
  ];

  late Set<String> selectedSpecialities;

  @override
  void initState() {
    super.initState();
    selectedSpecialities = Set.from(widget.initialSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Sort By',
                      style: AppTextStyles.font18Black600Weight,
                    ),
                  ),
                  verticalSpace(32),
                  Text('Speciality', style: AppTextStyles.font18Black600Weight),
                  verticalSpace(24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          allSpecialities.map((speciality) {
                            final bool isSelected = selectedSpecialities
                                .contains(speciality);
                            return Padding(
                              padding: EdgeInsets.only(right: 12.w),
                              child: _buildFilterChip(
                                text: speciality,
                                isSelected: isSelected,
                                onTap: () => toggleSpeciality(speciality),
                              ),
                            );
                          }).toList(),
                    ),
                  ),
                  verticalSpace(180),
                  AppCustomButton(
                    textButton: 'Done',
                    onPresssed: () {
                      final selected = selectedSpecialities;
                      widget.onFilter(selectedSpecialities);
                      context.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void toggleSpeciality(String speciality) {
    setState(() {
      if (speciality == 'All') {
        if (selectedSpecialities.contains('All')) {
          return;
        } else {
          selectedSpecialities.clear();
          selectedSpecialities.add('All');
        }
      } else {
        if (selectedSpecialities.contains('All')) {
          selectedSpecialities.remove('All');
        }
        if (selectedSpecialities.contains(speciality)) {
          selectedSpecialities.remove(speciality);
          if (selectedSpecialities.isEmpty) {
            selectedSpecialities.add('All');
          }
        } else {
          selectedSpecialities.add(speciality);
        }
      }
    });
  }

  Widget _buildFilterChip({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainBlue : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
