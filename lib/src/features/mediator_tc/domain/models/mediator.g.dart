// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MediatorAdapter extends TypeAdapter<Mediator> {
  @override
  final int typeId = 36;

  @override
  Mediator read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Mediator();
  }

  @override
  void write(BinaryWriter writer, Mediator obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediatorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mediator _$$_MediatorFromJson(Map<String, dynamic> json) => _$_Mediator(
      mediatorId: json['mediator_ID'] as int? ?? 0,
      classID: json['class_ID'] as int? ?? 0,
      courseName: json['course_Name'] as String? ?? '',
      teacherID: json['teacher_ID'] as int? ?? 0,
      basicInfo: json['basic_Info'] == null
          ? null
          : BasicInfoModel.fromJson(json['basic_Info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MediatorToJson(_$_Mediator instance) =>
    <String, dynamic>{
      'mediator_ID': instance.mediatorId,
      'class_ID': instance.classID,
      'course_Name': instance.courseName,
      'teacher_ID': instance.teacherID,
      'basic_Info': instance.basicInfo,
    };
