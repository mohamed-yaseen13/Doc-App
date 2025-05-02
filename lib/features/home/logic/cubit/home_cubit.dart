import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/data/repos/home_repo.dart';
import 'package:doc_app/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.homeInitial());

  void emitHomeStates() async {
    emit(const HomeState.homeLoading());

    final response = await _homeRepo.home();

    switch (response) {
      case Success(:final data):
        emit(HomeState.homeSuccess(data));

      case Failure(:final msg):
        emit(HomeState.homeFailure(error: msg));
    }
  }
}
