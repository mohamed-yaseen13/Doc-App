import 'package:freezed_annotation/freezed_annotation.dart';

part 'specializations_state.freezed.dart';

@freezed
class SpecializationsState<T> with _$SpecializationsState<T> {
  const factory SpecializationsState.specializationsInitial() =
      SpecializationsInitial;

  const factory SpecializationsState.specializationsLoading() =
      SpecializationsLoading;

  const factory SpecializationsState.specializationsSuccess(T data) =
      SpecializationsSuccess<T>;

  const factory SpecializationsState.specializationsFailure({
    required String error,
  }) = SpecializationsFailure;
}
