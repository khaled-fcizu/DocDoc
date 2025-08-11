import 'package:dio/dio.dart';
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
      _addDioPrettyLoggerToInterceptors(dio!);
      return dio!;
    } else {
      return dio!;
    }
  }

  static void _addDioPrettyLoggerToInterceptors(Dio dio) {
    dio.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }
}
