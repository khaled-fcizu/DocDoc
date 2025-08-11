import 'package:docdoc/core/networking/api_constants.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {}
