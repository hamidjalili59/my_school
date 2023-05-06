// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Score _$$_ScoreFromJson(Map<String, dynamic> json) => _$_Score(
      gradeId: json['grade_ID'] as int? ?? 0,
      classId: json['class_ID'] as int? ?? 0,
      teacherName: json['teacher_Name'] as String? ?? '',
      courseName: json['course_Name'] as String? ?? '',
      grade: (json['grade'] as num?)?.toDouble() ?? 0.0,
      studentId: json['student_ID'] == null
          ? null
          : DateTime.parse(json['student_ID'] as String),
    );

Map<String, dynamic> _$$_ScoreToJson(_$_Score instance) => <String, dynamic>{
      'grade_ID': instance.gradeId,
      'class_ID': instance.classId,
      'teacher_Name': instance.teacherName,
      'course_Name': instance.courseName,
      'grade': instance.grade,
      'student_ID': instance.studentId?.toIso8601String(),
    };
