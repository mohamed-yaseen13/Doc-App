import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/repos/specializations_repo.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/logic/cubit/specializations_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsCubit extends Cubit<SpecializationsState> {
  final SpecializationsRepo _specializationsRepo;

  SpecializationsCubit(this._specializationsRepo)
    : super(SpecializationsState.specializationsInitial());

  void emitSpecializationsStates() async {
    emit(const SpecializationsState.specializationsLoading());

    final response = await _specializationsRepo.getAllSpecializations();

    switch (response) {
      case Success(:final data):
        emit(SpecializationsState.specializationsSuccess(data));

      case Failure(:final msg):
        emit(SpecializationsState.specializationsFailure(error: msg));
    }
  }
}
