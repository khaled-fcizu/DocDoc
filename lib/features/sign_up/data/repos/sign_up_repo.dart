import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_response_body.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponseBody>> signUp(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      var response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
