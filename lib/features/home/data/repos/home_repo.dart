import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/home/data/models/speciality_response_model.dart';

class HomeRepo {
  final ApiService _apiService;
  HomeRepo(this._apiService);

  Future<ApiResult<SpecialityResponseModel>> getSpecializationData() async {
    try {
      var response = await _apiService.getSpecializationData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
