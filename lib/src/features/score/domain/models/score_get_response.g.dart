// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScoreGetResponseAdapter extends TypeAdapter<ScoreGetResponse> {
  @override
  final int typeId = 12;

  @override
  ScoreGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScoreGetResponse(
      scores: (fields[0] as List).cast<Score>(),
    );
  }

  @override
  void write(BinaryWriter writer, ScoreGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.scores);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScoreGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreGetResponse _$ScoreGetResponseFromJson(Map<String, dynamic> json) =>
    ScoreGetResponse(
      scores: (json['scores'] as List<dynamic>)
          .map((e) => Score.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScoreGetResponseToJson(ScoreGetResponse instance) =>
    <String, dynamic>{
      'scores': instance.scores,
    };
