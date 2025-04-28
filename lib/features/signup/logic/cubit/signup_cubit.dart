import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/signup/data/models/signup_request_body.dart';
import 'package:doc_app/features/signup/data/repos/signup_repo.dart';
import 'package:doc_app/features/signup/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  SignupCubit(this._signupRepo) : super(SignupState.signupInitial());

  void emitSignupStates(SignupRequestBody signupRequestBody) async {
    emit(const SignupState.signupLoading());

    final response = await _signupRepo.signup(signupRequestBody);

    switch (response) {
      case Success(:final data):
        emit(SignupState.signupSuccess(data));
      case Failure(:final msg):
        emit(SignupState.signupFailure(error: msg));
    }
  }
}
