import 'package:json_annotation/json_annotation.dart';

part 'doctors_response_model.g.dart';

@JsonSerializable()
class DoctorsResponseModel {
  @JsonKey(name: 'data')
  final List<Doctors?>? doctorsList;

  DoctorsResponseModel(this.doctorsList);

  factory DoctorsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsResponseModelFromJson(json);
}

@JsonSerializable()
class Doctors {
  final String? name;
  final Specialization? specialization;
  final String? description;

  Doctors(this.description, this.name, this.specialization);

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}

@JsonSerializable()
class Specialization {
  final String name;

  Specialization(this.name);

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
