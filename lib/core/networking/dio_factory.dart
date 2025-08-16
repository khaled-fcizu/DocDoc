import 'package:dio/dio.dart';
import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/helpers/shared_prefrance_helper.dart';
import 'package:docdoc/core/networking/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    if (dio == null) {
      Duration defaultTimeout = Duration(seconds: 30);
      dio = Dio();
      dio!.options
        ..baseUrl = ApiConstants.baseUrl
        ..connectTimeout = defaultTimeout
        ..receiveTimeout = defaultTimeout;
      _addDioPrettyLoggerToInterceptors();
      _addDioHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void _addDioPrettyLoggerToInterceptors() {
    dio!.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }

  static void _addDioHeaders() {
    dio!.options.headers = {'Accept': 'application/json'};
  }

  static void addDioInterceptorWrapper() {
    dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final String? token = await SharedPrefHelper.getSecureString(
            SharedPrefHelperKeys.userToken,
          );
          if (!token.isNullOrEmpty()) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
  }
}
