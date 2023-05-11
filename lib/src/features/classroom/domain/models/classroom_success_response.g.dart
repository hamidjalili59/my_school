// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassroomSuccessResponseAdapter
    extends TypeAdapter<ClassroomSuccessResponse> {
  @override
  final int typeId = 5;

  @override
  ClassroomSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClassroomSuccessResponse(
      classroom: fields[0] as Classroom,
    );
  }

  @override
  void write(BinaryWriter writer, ClassroomSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.classroom);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassroomSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassroomSuccessResponse _$ClassroomSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    ClassroomSuccessResponse(
      classroom: Classroom.fromJson(json['Class'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassroomSuccessResponseToJson(
        ClassroomSuccessResponse instance) =>
    <String, dynamic>{
      'Class': instance.classroom,
    };
