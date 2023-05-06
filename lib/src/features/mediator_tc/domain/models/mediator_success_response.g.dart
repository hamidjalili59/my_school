// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MediatorSuccessResponseAdapter
    extends TypeAdapter<MediatorSuccessResponse> {
  @override
  final int typeId = 37;

  @override
  MediatorSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MediatorSuccessResponse(
      mediators: (fields[0] as List).cast<Mediator>(),
    );
  }

  @override
  void write(BinaryWriter writer, MediatorSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.mediators);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediatorSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorSuccessResponse _$MediatorSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    MediatorSuccessResponse(
      mediators: (json['MediatorTC'] as List<dynamic>)
          .map((e) => Mediator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediatorSuccessResponseToJson(
        MediatorSuccessResponse instance) =>
    <String, dynamic>{
      'MediatorTC': instance.mediators,
    };
