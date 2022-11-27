// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeacherSuccessResponseAdapter
    extends TypeAdapter<TeacherSuccessResponse> {
  @override
  final int typeId = 13;

  @override
  TeacherSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TeacherSuccessResponse(
      teacher: fields[0] as Teacher,
    );
  }

  @override
  void write(BinaryWriter writer, TeacherSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.teacher);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeacherSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherSuccessResponse _$TeacherSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    TeacherSuccessResponse(
      teacher: Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherSuccessResponseToJson(
        TeacherSuccessResponse instance) =>
    <String, dynamic>{
      'teacher': instance.teacher,
    };
