import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.loginInitial() = _LoginInitial;

  const factory LoginState.loginLoading() = LoginLoading;

  const factory LoginState.loginSuccess(T data) = LoginSuccess<T>;

  const factory LoginState.loginFailure({required String error}) = LoginFailure;
}
