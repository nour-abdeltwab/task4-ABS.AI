//TODO: add your model class here
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class SchoolModel {
  final String schoolName;
  final String schoolAddress;
  final String studentsNo;
  final String teachersNo;

  SchoolModel(
      {required this.schoolName,
      required this.schoolAddress,
      required this.studentsNo,
      required this.teachersNo});

  factory SchoolModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolModelFromJson(json);
  Map<String, dynamic> toJson() => _$SchoolModelToJson(this);
}
