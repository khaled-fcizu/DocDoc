import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:docdoc/features/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(LoginState.loginInitial());
  final LoginRepo _loginRepo;
  emitLoginStates() async {
    emit(LoginLoading());
    var response = await _loginRepo.login(
      LoginRequestBody(email: 'email', password: 'password'),
    );
    response.when(
      failure: (apiErrorModel) {
        emit(LoginFailure(apiErrorModel));
      },
      success: (loginResponseBody) {
        emit(LoginSeccess(loginResponseBody));
      },
    );
  }
}
