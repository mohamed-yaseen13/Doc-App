import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/models/doctors_response_model.dart';
import 'package:doc_app/features/home/ui/widgets/home_recommendations/home_recommendation_doctor_item.dart';
import 'package:flutter/widgets.dart';

class AllDoctors extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const AllDoctors({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < doctorsList!.length; i++) ...[
          verticalSpace(12),
          HomeRecommendationDoctorItem(
            imageAsset: 'assets/images/recommendation_doctor_randy.png',
            decs:
                '${doctorsList?[i]?.specialization?.name} | ${doctorsList?[i]?.description}',
            doctorName: '${doctorsList?[i]?.name}',
          ),
        ],
      ],
    );
  }
}
