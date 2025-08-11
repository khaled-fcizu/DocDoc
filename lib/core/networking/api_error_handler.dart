import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_error_model.dart';

class ApiErrorHandler {
  ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection to server is timeout');
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'send to server is timeout');

        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'recieve from server is timeout');

        case DioExceptionType.badCertificate:
          return ApiErrorModel(
            message: 'you don\'t have certificate to requset server',
          );

        case DioExceptionType.badResponse:
          return _handleBadResponse(error.response?.data);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'send to server is canceled');

        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Chick your internet connection');

        case DioExceptionType.unknown:
          return ApiErrorModel(
            message: 'Something went wrong, try again later!',
          );
      }
    } else {
      return ApiErrorModel(message: 'Something went wrong, try again later!');
    }
  }

  ApiErrorModel _handleBadResponse(errorResponse) {
    return ApiErrorModel(
      message:
          errorResponse['message'] ?? 'Something went wrong, try again later!',
      errorMap: errorResponse['data'],
      code: errorResponse['code'],
    );
  }
}
