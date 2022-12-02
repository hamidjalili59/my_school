// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exam _$$_ExamFromJson(Map<String, dynamic> json) => _$_Exam(
      examId: json['examId'] as int?,
      teacherId: json['teacherId'] as int?,
      isDone: json['isDone'] as bool?,
      examDescription: json['examDescription'] as String?,
      teacherName: json['teacherName'] as String?,
    );

Map<String, dynamic> _$$_ExamToJson(_$_Exam instance) => <String, dynamic>{
      'examId': instance.examId,
      'teacherId': instance.teacherId,
      'isDone': instance.isDone,
      'examDescription': instance.examDescription,
      'teacherName': instance.teacherName,
    };
