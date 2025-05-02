import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.homeInitial() = _HomeInitial;

  const factory HomeState.homeLoading() = HomeLoading;

  const factory HomeState.homeSuccess(T data) = HomeSuccess<T>;

  const factory HomeState.homeFailure({required String error}) = HomeFailure;
}
