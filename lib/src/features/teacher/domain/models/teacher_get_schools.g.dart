// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_get_schools.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeacherGetSchoolsAdapter extends TypeAdapter<TeacherGetSchools> {
  @override
  final int typeId = 34;

  @override
  TeacherGetSchools read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TeacherGetSchools(
      fields[0] as int,
      fields[1] as int,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TeacherGetSchools obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.teacherId)
      ..writeByte(1)
      ..write(obj.schoolId)
      ..writeByte(2)
      ..write(obj.schoolName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeacherGetSchoolsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherGetSchools _$TeacherGetSchoolsFromJson(Map<String, dynamic> json) =>
    TeacherGetSchools(
      json['teacherId'] as int,
      json['schoolId'] as int,
      json['schoolName'] as String,
    );

Map<String, dynamic> _$TeacherGetSchoolsToJson(TeacherGetSchools instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'schoolId': instance.schoolId,
      'schoolName': instance.schoolName,
    };
