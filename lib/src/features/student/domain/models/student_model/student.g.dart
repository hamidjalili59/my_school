// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
      studentId: json['student_ID'] as int? ?? 0,
      classId: json['class_ID'] as int? ?? 0,
      basicInfo: json['basic_Info'] == null
          ? null
          : BasicInfoModel.fromJson(json['basic_Info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'student_ID': instance.studentId,
      'class_ID': instance.classId,
      'basic_Info': instance.basicInfo,
    };
