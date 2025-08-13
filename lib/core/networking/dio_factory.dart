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
    dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzU1MTAyNjc1LCJleHAiOjE3NTUxODkwNzUsIm5iZiI6MTc1NTEwMjY3NSwianRpIjoiVkNEbWFIOXpkbzN5ZFBmWSIsInN1YiI6IjQ1MDAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.uzmr_Elp_yvwHL-JjxakM-pVNDVHU5OEgbgw5spVWYw',
    };
  }
}
