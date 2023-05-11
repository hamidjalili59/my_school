// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentSuccessResponseAdapter
    extends TypeAdapter<StudentSuccessResponse> {
  @override
  final int typeId = 30;

  @override
  StudentSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudentSuccessResponse(
      student: fields[0] as Student,
    );
  }

  @override
  void write(BinaryWriter writer, StudentSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.student);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentSuccessResponse _$StudentSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    StudentSuccessResponse(
      student: Student.fromJson(json['Student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentSuccessResponseToJson(
        StudentSuccessResponse instance) =>
    <String, dynamic>{
      'Student': instance.student,
    };
