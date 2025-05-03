import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/models/specializations_response_model.dart';
import 'package:doc_app/features/home/ui/widgets/home_specializations/speciality_item.dart';
import 'package:flutter/widgets.dart';

class AllSpecializations extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const AllSpecializations({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < specializationDataList.length; i += 3) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (
                int j = i;
                j < i + 3 && j < specializationDataList.length;
                j++
              )
                SpecialityItem(
                  iconAsset: 'assets/images/speciality_general.png',
                  specializationName:
                      specializationDataList[j]?.name ?? 'General',
                ),
            ],
          ),
          verticalSpace(24),
        ],
      ],
    );
  }
}
