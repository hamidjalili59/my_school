// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_success_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParentSuccessResponseAdapter extends TypeAdapter<ParentSuccessResponse> {
  @override
  final int typeId = 18;

  @override
  ParentSuccessResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ParentSuccessResponse(
      parent: fields[0] as Parent,
    );
  }

  @override
  void write(BinaryWriter writer, ParentSuccessResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.parent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParentSuccessResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentSuccessResponse _$ParentSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    ParentSuccessResponse(
      parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParentSuccessResponseToJson(
        ParentSuccessResponse instance) =>
    <String, dynamic>{
      'parent': instance.parent,
    };
