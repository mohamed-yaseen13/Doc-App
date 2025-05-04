import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/models/doctors_response_model.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/logic/cubit/doctors_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchDoctor extends StatefulWidget {
  final List<Doctors?>? doctorsList;
  final Function(List<Doctors?> filteredList)? onSearchResults;
  const SearchDoctor({
    super.key,
    required this.doctorsList,
    required this.onSearchResults,
  });

  @override
  State<SearchDoctor> createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  late TextEditingController searchController;

  List<Doctors?>? allDoctorsList = [];
  List<Doctors?>? searchedDoctorsList = [];

  @override
  void initState() {
    super.initState();
    searchController = context.read<DoctorsCubit>().searchController;
    allDoctorsList = widget.doctorsList;
    searchedDoctorsList = allDoctorsList;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        isDense: true,
        focusedBorder: AppCustomBorder(AppColors.mainBlue),
        enabledBorder: AppCustomBorder(Color(0xFFF5F5F5)),
        hintStyle: AppTextStyles.font14Grey500Weight,
        hintText: 'Search',
        prefixIcon: Image.asset('assets/images/search_icon.png'),
        filled: true,
        fillColor: Color(0xFFF5F5F5),
      ),
      onChanged: (searchedDoctor) {
        filterDoctors(searchedDoctor);
        if (widget.onSearchResults != null) {
          widget.onSearchResults!(searchedDoctorsList!);
        }
      },
    );
  }

  InputBorder AppCustomBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(16),
    );
  }

  void filterDoctors(String searchedDoctor) {
    searchedDoctorsList =
        allDoctorsList
            ?.where(
              (char) => char!.name!.toLowerCase().startsWith(searchedDoctor),
            )
            .toList();
  }
}
