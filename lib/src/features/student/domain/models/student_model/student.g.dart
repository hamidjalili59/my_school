// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
      studentId: json['studentId'] as int?,
      classId: json['classId'] as int?,
      basicInfo: json['basicInfo'] == null
          ? null
          : BasicInfoModel.fromJson(json['basicInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'classId': instance.classId,
      'basicInfo': instance.basicInfo,
    };
