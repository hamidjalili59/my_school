// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exam _$$_ExamFromJson(Map<String, dynamic> json) => _$_Exam(
      examId: json['exam_ID'] as int? ?? 0,
      teacherId: json['teacher_ID'] as int? ?? 0,
      isDone: json['done'] as bool? ?? false,
      examDescription: json['exam_Describtion'] as String? ?? '',
      teacherName: json['teacher_Name'] as String? ?? '',
      classId: json['class_ID'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ExamToJson(_$_Exam instance) => <String, dynamic>{
      'exam_ID': instance.examId,
      'teacher_ID': instance.teacherId,
      'done': instance.isDone,
      'exam_Describtion': instance.examDescription,
      'teacher_Name': instance.teacherName,
      'class_ID': instance.classId,
    };
