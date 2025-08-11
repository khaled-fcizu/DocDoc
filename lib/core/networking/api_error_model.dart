import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errorMap;
  final int? code;

  ApiErrorModel({this.message, this.errorMap, this.code});
  factory ApiErrorModel.fromJson(json) => _$ApiErrorModelFromJson(json);

  String getErrorAllMessage() {
    if (errorMap == null && errorMap == {}) {
      return message ?? 'Unkown error occures';
    } else {
      return errorMap!.entries
          .map((entie) {
            var value = entie.value;
            return '${value.join(",")}';
          })
          .join('\n');
    }
  }
}
