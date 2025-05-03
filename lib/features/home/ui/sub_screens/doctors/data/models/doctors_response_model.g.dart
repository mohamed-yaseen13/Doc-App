// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsResponseModel _$DoctorsResponseModelFromJson(
  Map<String, dynamic> json,
) => DoctorsResponseModel(
  (json['data'] as List<dynamic>?)
      ?.map(
        (e) => e == null ? null : Doctors.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$DoctorsResponseModelToJson(
  DoctorsResponseModel instance,
) => <String, dynamic>{'data': instance.doctorsList};

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
  json['description'] as String?,
  json['name'] as String?,
  json['specialization'] == null
      ? null
      : Specialization.fromJson(json['specialization'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
  'name': instance.name,
  'specialization': instance.specialization,
  'description': instance.description,
};

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(json['name'] as String);

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{'name': instance.name};
