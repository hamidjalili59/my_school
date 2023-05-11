// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rollcall_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RollcallSuccessResponseAdapter
    extends TypeAdapter<RollcallSuccessResponse> {
  @override
  final int typeId = 24;

  @override
  RollcallSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RollcallSuccessResponse(
      rollcall: (fields[0] as List).cast<Rollcall>(),
    );
  }

  @override
  void write(BinaryWriter writer, RollcallSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.rollcall);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RollcallSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RollcallSuccessResponse _$RollcallSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    RollcallSuccessResponse(
      rollcall: (json['RollCalls'] as List<dynamic>)
          .map((e) => Rollcall.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RollcallSuccessResponseToJson(
        RollcallSuccessResponse instance) =>
    <String, dynamic>{
      'RollCalls': instance.rollcall,
    };
