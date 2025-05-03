import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/repos/doctors_repo.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/logic/cubit/doctors_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsCubit extends Cubit<DoctorsState> {
  final DoctorsRepo _doctorsRepo;

  DoctorsCubit(this._doctorsRepo) : super(DoctorsState.doctorsInitial());

  void emitDoctorsStates() async {
    emit(const DoctorsState.doctorsLoading());

    final response = await _doctorsRepo.getAllDoctors();

    switch (response) {
      case Success(:final data):
        emit(DoctorsState.doctorsSuccess(data));

      case Failure(:final msg):
        emit(DoctorsState.doctorsFailure(error: msg));
    }
  }
}
