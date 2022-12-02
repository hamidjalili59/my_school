// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rollcall_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rollcall _$$_RollcallFromJson(Map<String, dynamic> json) => _$_Rollcall(
      rolecallId: json['rolecallId'] as int?,
      studentId: json['studentId'] as int?,
      classId: json['classId'] as String?,
      classTime: json['classTime'] as int?,
      absent: json['absent'] as bool?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_RollcallToJson(_$_Rollcall instance) =>
    <String, dynamic>{
      'rolecallId': instance.rolecallId,
      'studentId': instance.studentId,
      'classId': instance.classId,
      'classTime': instance.classTime,
      'absent': instance.absent,
      'date': instance.date,
    };
