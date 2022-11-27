// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassroomGetResponseAdapter extends TypeAdapter<ClassroomGetResponse> {
  @override
  final int typeId = 12;

  @override
  ClassroomGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClassroomGetResponse(
      classrooms: (fields[0] as List).cast<Classroom>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClassroomGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.classrooms);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassroomGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassroomGetResponse _$ClassroomGetResponseFromJson(
        Map<String, dynamic> json) =>
    ClassroomGetResponse(
      classrooms: (json['classrooms'] as List<dynamic>)
          .map((e) => Classroom.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassroomGetResponseToJson(
        ClassroomGetResponse instance) =>
    <String, dynamic>{
      'classrooms': instance.classrooms,
    };
