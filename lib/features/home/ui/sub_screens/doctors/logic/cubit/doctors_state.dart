import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_state.freezed.dart';

@freezed
class DoctorsState<T> with _$DoctorsState<T> {
  const factory DoctorsState.doctorsInitial() = _DoctorsInitial;

  const factory DoctorsState.doctorsLoading() = DoctorsLoading;

  const factory DoctorsState.doctorsSuccess(T data) = DoctorsSuccess<T>;

  const factory DoctorsState.doctorsFailure({required String error}) =
      DoctorsFailure;
}
