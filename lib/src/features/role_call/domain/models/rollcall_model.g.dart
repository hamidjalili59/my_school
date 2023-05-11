// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rollcall_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rollcall _$$_RollcallFromJson(Map<String, dynamic> json) => _$_Rollcall(
      rolecallId: json['rollCall_ID'] as int? ?? 0,
      studentId: json['student_ID'] as int? ?? 0,
      classId: json['class_ID'] as int? ?? 0,
      classTime: json['class_Time'] as int? ?? 0,
      absent: json['absent'] as bool? ?? false,
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$_RollcallToJson(_$_Rollcall instance) =>
    <String, dynamic>{
      'rollCall_ID': instance.rolecallId,
      'student_ID': instance.studentId,
      'class_ID': instance.classId,
      'class_Time': instance.classTime,
      'absent': instance.absent,
      'date': instance.date,
    };
