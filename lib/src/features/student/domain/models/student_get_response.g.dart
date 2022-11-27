// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentGetResponseAdapter extends TypeAdapter<StudentGetResponse> {
  @override
  final int typeId = 12;

  @override
  StudentGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudentGetResponse(
      students: (fields[0] as List).cast<Student>(),
    );
  }

  @override
  void write(BinaryWriter writer, StudentGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.students);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentGetResponse _$StudentGetResponseFromJson(Map<String, dynamic> json) =>
    StudentGetResponse(
      students: (json['students'] as List<dynamic>)
          .map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StudentGetResponseToJson(StudentGetResponse instance) =>
    <String, dynamic>{
      'students': instance.students,
    };
