import 'package:json_annotation/json_annotation.dart';
part 'speciality_response_model.g.dart';

@JsonSerializable()
class SpecialityResponseModel {
  @JsonKey(name: 'data')
  final List<SpecializationModel>? specializationsList;
  SpecialityResponseModel({this.specializationsList});
  factory SpecialityResponseModel.fromJson(json) =>
      _$SpecialityResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationModel {
  final int? id;
  final String? name;
  @JsonKey(name: 'doctors')
  final List<DoctorModel>? doctorsList;
  SpecializationModel({this.doctorsList, this.id, this.name});
  factory SpecializationModel.fromJson(json) =>
      _$SpecializationModelFromJson(json);
}

@JsonSerializable()
class DoctorModel {
  final int? id;
  final String? name;
  final String? phone;
  final String? degree;
  final String? email;
  final String? address;
  final String? gender;
  final String? photo;
  @JsonKey(name: 'appoint_price')
  final int? price;
  DoctorModel({
    this.price,
    this.address,
    this.degree,
    this.email,
    this.gender,
    this.id,
    this.name,
    this.phone,
    this.photo,
  });
  factory DoctorModel.fromJson(json) => _$DoctorModelFromJson(json);
}
