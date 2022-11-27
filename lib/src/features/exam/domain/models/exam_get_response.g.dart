// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExamGetResponseAdapter extends TypeAdapter<ExamGetResponse> {
  @override
  final int typeId = 12;

  @override
  ExamGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExamGetResponse(
      exams: (fields[0] as List).cast<Exam>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExamGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.exams);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExamGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExamGetResponse _$ExamGetResponseFromJson(Map<String, dynamic> json) =>
    ExamGetResponse(
      exams: (json['exams'] as List<dynamic>)
          .map((e) => Exam.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExamGetResponseToJson(ExamGetResponse instance) =>
    <String, dynamic>{
      'exams': instance.exams,
    };
