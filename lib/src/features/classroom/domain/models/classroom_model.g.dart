// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Classroom _$$_ClassroomFromJson(Map<String, dynamic> json) => _$_Classroom(
      classID: json['class_ID'] as int? ?? 0,
      schoolId: json['school_ID'] as int? ?? 0,
      className: json['class_Name'] as String? ?? 'مدرسه من',
    );

Map<String, dynamic> _$$_ClassroomToJson(_$_Classroom instance) =>
    <String, dynamic>{
      'class_ID': instance.classID,
      'school_ID': instance.schoolId,
      'class_Name': instance.className,
    };
