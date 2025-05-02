// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponseModel _$HomeResponseModelFromJson(
  Map<String, dynamic> json,
) => HomeResponseModel(
  specializationsDataList:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) =>
                e == null
                    ? null
                    : SpecializationsData.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$HomeResponseModelToJson(HomeResponseModel instance) =>
    <String, dynamic>{'data': instance.specializationsDataList};

SpecializationsData _$SpecializationsDataFromJson(Map<String, dynamic> json) =>
    SpecializationsData(
      name: json['name'] as String?,
      doctorsList:
          (json['doctors'] as List<dynamic>?)
              ?.map(
                (e) =>
                    e == null
                        ? null
                        : Doctors.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$SpecializationsDataToJson(
  SpecializationsData instance,
) => <String, dynamic>{'name': instance.name, 'doctors': instance.doctorsList};

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
  name: json['name'] as String?,
  city:
      json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
  'name': instance.name,
  'city': instance.city,
};

City _$CityFromJson(Map<String, dynamic> json) =>
    City(name: json['name'] as String?);

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
  'name': instance.name,
};
