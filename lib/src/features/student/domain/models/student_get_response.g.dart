// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_get_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentGetResponse _$$_StudentGetResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StudentGetResponse(
      students: (json['Students'] as List<dynamic>?)
              ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StudentGetResponseToJson(
        _$_StudentGetResponse instance) =>
    <String, dynamic>{
      'Students': instance.students,
    };
