import 'package:doc_app/core/helpers/shared_pref.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/repos/login_repo.dart';
import 'package:doc_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.loginInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loginLoading());

    final response = await _loginRepo.login(loginRequestBody);

    switch (response) {
      case Success(:final data):
        await saveUserToken(data.loginData!.token ?? '');
        emit(LoginState.loginSuccess(data));
      case Failure(:final msg):
        emit(LoginState.loginFailure(error: msg));
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPref.setSecuredString(SharedPref.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
