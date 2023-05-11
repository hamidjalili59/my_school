// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_get_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParentGetResponseAdapter extends TypeAdapter<ParentGetResponse> {
  @override
  final int typeId = 17;

  @override
  ParentGetResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ParentGetResponse(
      parents: fields[0] as Parent,
    );
  }

  @override
  void write(BinaryWriter writer, ParentGetResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.parents);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParentGetResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentGetResponse _$ParentGetResponseFromJson(Map<String, dynamic> json) =>
    ParentGetResponse(
      parents: Parent.fromJson(json['parents'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParentGetResponseToJson(ParentGetResponse instance) =>
    <String, dynamic>{
      'parents': instance.parents,
    };
