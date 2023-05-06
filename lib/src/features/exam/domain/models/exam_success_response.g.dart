// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExamSuccessResponseAdapter extends TypeAdapter<ExamSuccessResponse> {
  @override
  final int typeId = 16;

  @override
  ExamSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExamSuccessResponse(
      exam: fields[0] as Exam,
    );
  }

  @override
  void write(BinaryWriter writer, ExamSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.exam);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExamSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamSuccessResponse _$ExamSuccessResponseFromJson(Map<String, dynamic> json) =>
    ExamSuccessResponse(
      exam: Exam.fromJson(json['exam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExamSuccessResponseToJson(
        ExamSuccessResponse instance) =>
    <String, dynamic>{
      'exam': instance.exam,
    };
