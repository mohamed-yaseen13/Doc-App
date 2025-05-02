import 'package:json_annotation/json_annotation.dart';

part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationsDataList;

  HomeResponseModel({this.specializationsDataList});

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  String? name;

  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;

  SpecializationsData({this.name, this.doctorsList});

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  String? name;
  City? city;

  Doctors({this.name, this.city});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}

@JsonSerializable()
class City {
  String? name;

  City({this.name});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
