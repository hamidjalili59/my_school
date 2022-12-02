// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Teacher _$$_TeacherFromJson(Map<String, dynamic> json) => _$_Teacher(
      teacherId: json['teacherId'] as int?,
      basicInfo: json['basicInfo'] == null
          ? null
          : BasicInfoModel.fromJson(json['basicInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeacherToJson(_$_Teacher instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'basicInfo': instance.basicInfo,
    };
