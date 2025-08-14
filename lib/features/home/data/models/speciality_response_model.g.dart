// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialityResponseModel _$SpecialityResponseModelFromJson(
  Map<String, dynamic> json,
) => SpecialityResponseModel(
  specializationsList: (json['data'] as List<dynamic>?)
      ?.map(SpecializationModel.fromJson)
      .toList(),
);

Map<String, dynamic> _$SpecialityResponseModelToJson(
  SpecialityResponseModel instance,
) => <String, dynamic>{'data': instance.specializationsList};

SpecializationModel _$SpecializationModelFromJson(Map<String, dynamic> json) =>
    SpecializationModel(
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map(DoctorModel.fromJson)
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SpecializationModelToJson(
  SpecializationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctorsList,
};

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
  price: (json['appoint_price'] as num?)?.toInt(),
  address: json['address'] as String?,
  degree: json['degree'] as String?,
  email: json['email'] as String?,
  gender: json['gender'] as String?,
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  photo: json['photo'] as String?,
);

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'degree': instance.degree,
      'email': instance.email,
      'address': instance.address,
      'gender': instance.gender,
      'photo': instance.photo,
      'appoint_price': instance.price,
    };
