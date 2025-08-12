import 'package:docdoc/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.loginInitial() = _LoginInitial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSeccess(T data) = LoginSeccess<T>;
  const factory LoginState.loginError(ApiErrorModel apiErrorModel) =
      LoginFailure;
}
