// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScoreSuccessResponseAdapter extends TypeAdapter<ScoreSuccessResponse> {
  @override
  final int typeId = 13;

  @override
  ScoreSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScoreSuccessResponse(
      score: fields[0] as Score,
    );
  }

  @override
  void write(BinaryWriter writer, ScoreSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.score);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScoreSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreSuccessResponse _$ScoreSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    ScoreSuccessResponse(
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreSuccessResponseToJson(
        ScoreSuccessResponse instance) =>
    <String, dynamic>{
      'score': instance.score,
    };
