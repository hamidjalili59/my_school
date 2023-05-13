// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator_add_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MediatorAddSuccessResponseAdapter
    extends TypeAdapter<MediatorAddSuccessResponse> {
  @override
  final int typeId = 38;

  @override
  MediatorAddSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MediatorAddSuccessResponse(
      mediator: fields[0] as Mediator,
    );
  }

  @override
  void write(BinaryWriter writer, MediatorAddSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.mediator);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediatorAddSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorAddSuccessResponse _$MediatorAddSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    MediatorAddSuccessResponse(
      mediator: Mediator.fromJson(json['MediatorTC'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediatorAddSuccessResponseToJson(
        MediatorAddSuccessResponse instance) =>
    <String, dynamic>{
      'MediatorTC': instance.mediator,
    };
