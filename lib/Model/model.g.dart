// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolModel _$SchoolModelFromJson(Map<String, dynamic> json) => SchoolModel(
      schoolName: json['School Name'] as String,
      schoolAddress: json['School Address'] as String,
      studentsNo: (json['Number of Students'] as String),
      teachersNo: (json['Number of Teachers'] as String),
    );

Map<String, dynamic> _$SchoolModelToJson(SchoolModel instance) =>
    <String, dynamic>{
      'School Name': instance.schoolName,
      'School Address': instance.schoolAddress,
      'Number of Students': instance.studentsNo,
      'Number of Teachers': instance.teachersNo,
    };
