// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Parent _$$_ParentFromJson(Map<String, dynamic> json) => _$_Parent(
      parentId: json['parentId'] as int?,
      schoolId: json['schoolId'] as int?,
      basicInfo: json['basicInfo'] == null
          ? null
          : BasicInfoModel.fromJson(json['basicInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ParentToJson(_$_Parent instance) => <String, dynamic>{
      'parentId': instance.parentId,
      'schoolId': instance.schoolId,
      'basicInfo': instance.basicInfo,
    };
