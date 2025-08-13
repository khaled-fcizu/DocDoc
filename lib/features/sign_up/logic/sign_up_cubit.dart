import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:docdoc/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(SignUpState.signUpInitial());
  final signUpKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confermPasswordController = TextEditingController();
  Future<void> fetchSignUpStates() async {
    emit(SignUpLoading());
    var response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        confermPassword: confermPasswordController.text,
        gender: 1,
      ),
    );
    response.when(
      success: (signUpResponseBody) {
        emit(SignUpSuccess(signUpResponseBody));
      },
      failure: (apiErrorModel) {
        emit(SignUpError(apiErrorModel));
      },
    );
  }
}
