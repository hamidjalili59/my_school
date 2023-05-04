// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeacherGetResponseAdapter extends TypeAdapter<TeacherGetResponse> {
  @override
  final int typeId = 12;

  @override
  TeacherGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TeacherGetResponse(
      teachers: (fields[0] as List).cast<Teacher>(),
    );
  }

  @override
  void write(BinaryWriter writer, TeacherGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.teachers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeacherGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherGetResponse _$TeacherGetResponseFromJson(Map<String, dynamic> json) =>
    TeacherGetResponse(
      teachers: (json['Teachers'] as List<dynamic>)
          .map((e) => Teacher.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeacherGetResponseToJson(TeacherGetResponse instance) =>
    <String, dynamic>{
      'Teachers': instance.teachers,
    };
