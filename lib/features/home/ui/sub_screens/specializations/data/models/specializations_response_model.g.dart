// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationsResponseModel _$SpecializationsResponseModelFromJson(
  Map<String, dynamic> json,
) => SpecializationsResponseModel(
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

Map<String, dynamic> _$SpecializationsResponseModelToJson(
  SpecializationsResponseModel instance,
) => <String, dynamic>{'data': instance.specializationsDataList};

SpecializationsData _$SpecializationsDataFromJson(Map<String, dynamic> json) =>
    SpecializationsData(name: json['name'] as String?);

Map<String, dynamic> _$SpecializationsDataToJson(
  SpecializationsData instance,
) => <String, dynamic>{'name': instance.name};
