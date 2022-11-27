// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Score _$$_ScoreFromJson(Map<String, dynamic> json) => _$_Score(
      gradeId: json['gradeId'] as int?,
      classId: json['classId'] as int?,
      studentInfo: json['studentInfo'] == null
          ? null
          : BasicInfoModel.fromJson(
              json['studentInfo'] as Map<String, dynamic>),
      teacherName: json['teacherName'] as String?,
      courseName: json['courseName'] as String?,
      grade: (json['grade'] as num?)?.toDouble(),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$_ScoreToJson(_$_Score instance) => <String, dynamic>{
      'gradeId': instance.gradeId,
      'classId': instance.classId,
      'studentInfo': instance.studentInfo,
      'teacherName': instance.teacherName,
      'courseName': instance.courseName,
      'grade': instance.grade,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
