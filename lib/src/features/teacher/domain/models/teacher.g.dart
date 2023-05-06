// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeacherAdapter extends TypeAdapter<Teacher> {
  @override
  final int typeId = 35;

  @override
  Teacher read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Teacher();
  }

  @override
  void write(BinaryWriter writer, Teacher obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeacherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Teacher _$$_TeacherFromJson(Map<String, dynamic> json) => _$_Teacher(
      teacherId: json['teacher_ID'] as int? ?? 0,
      basicInfo: json['basic_Info'] == null
          ? null
          : BasicInfoModel.fromJson(json['basic_Info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeacherToJson(_$_Teacher instance) =>
    <String, dynamic>{
      'teacher_ID': instance.teacherId,
      'basic_Info': instance.basicInfo,
    };
