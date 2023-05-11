// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rollcall_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RollcallGetResponseAdapter extends TypeAdapter<RollcallGetResponse> {
  @override
  final int typeId = 21;

  @override
  RollcallGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RollcallGetResponse(
      rollcalls: (fields[0] as List).cast<Rollcall>(),
    );
  }

  @override
  void write(BinaryWriter writer, RollcallGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.rollcalls);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RollcallGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RollcallGetResponse _$RollcallGetResponseFromJson(Map<String, dynamic> json) =>
    RollcallGetResponse(
      rollcalls: (json['RollCalls'] as List<dynamic>)
          .map((e) => Rollcall.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RollcallGetResponseToJson(
        RollcallGetResponse instance) =>
    <String, dynamic>{
      'RollCalls': instance.rollcalls,
    };
